import { readFileSync, readdirSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { docsBase, docsSite } from "../docs/siteConfig.js";

const scriptPath = fileURLToPath(import.meta.url);
const repoRoot = path.resolve(path.dirname(scriptPath), "..");

const decodeHTML = (value) =>
  value.replace(/&(#x[\da-f]+|#\d+|amp|quot|apos|lt|gt|nbsp);/gi, (entity, reference) => {
    const normalized = reference.toLowerCase();
    if (normalized === "amp") return "&";
    if (normalized === "quot") return '"';
    if (normalized === "apos" || normalized === "#39") return "'";
    if (normalized === "lt") return "<";
    if (normalized === "gt") return ">";
    if (normalized === "nbsp") return "\u00a0";
    const codePoint = normalized.startsWith("#x")
      ? Number.parseInt(normalized.slice(2), 16)
      : Number.parseInt(normalized.slice(1), 10);
    return codePoint > 0 && codePoint <= 0x10ffff && !(codePoint >= 0xd800 && codePoint <= 0xdfff)
      ? String.fromCodePoint(codePoint)
      : "\ufffd";
  });

const isExternal = (url, siteOrigin) => {
  if (!/^(?:[a-z][a-z\d+.-]*:|\/\/)/i.test(url)) return false;
  try {
    return new URL(url, siteOrigin).origin !== siteOrigin;
  } catch {
    return true;
  }
};

const parseAttributes = (text) => {
  const attributes = new Map();
  const pattern = /([^\s"'<>/=]+)(?:\s*=\s*(?:"([^"]*)"|'([^']*)'|([^\s>]+)))?/g;
  for (const match of text.matchAll(pattern)) {
    attributes.set(
      (match[1] ?? "").toLowerCase(),
      decodeHTML(match[2] ?? match[3] ?? match[4] ?? ""),
    );
  }
  return attributes;
};

const findTagEnd = (html, start) => {
  let quote = "";
  for (let index = start; index < html.length; index += 1) {
    const character = html[index];
    if (quote !== "") {
      if (character === quote) quote = "";
    } else if (character === '"' || character === "'") {
      quote = character;
    } else if (character === ">") {
      return index;
    }
  }
  return html.length;
};

const parseElements = (html) => {
  const elements = [];
  const lowerHTML = html.toLowerCase();
  let cursor = 0;
  let rawTextElement = "";

  while (cursor < html.length) {
    if (rawTextElement !== "") {
      const closingTag = lowerHTML.indexOf(`</${rawTextElement}`, cursor);
      if (closingTag === -1) break;
      if (rawTextElement === "style") {
        elements.push({
          name: "style-text",
          attributes: new Map([["style-text", html.slice(cursor, closingTag)]]),
        });
      }
      cursor = closingTag;
      rawTextElement = "";
    }

    const start = html.indexOf("<", cursor);
    if (start === -1) break;
    if (html.startsWith("<!--", start)) {
      const commentEnd = html.indexOf("-->", start + 4);
      cursor = commentEnd === -1 ? html.length : commentEnd + 3;
      continue;
    }
    if (html.startsWith("</", start)) {
      cursor = findTagEnd(html, start + 2) + 1;
      continue;
    }
    if (html.startsWith("<!", start) || html.startsWith("<?", start)) {
      cursor = findTagEnd(html, start + 2) + 1;
      continue;
    }

    const end = findTagEnd(html, start + 1);
    const tag = html.slice(start, end + 1);
    const match = /^<\s*([A-Za-z][A-Za-z0-9:-]*)\b([\s\S]*?)\/?>$/.exec(tag);
    cursor = end + 1;
    if (match === null) continue;

    const name = (match[1] ?? "").toLowerCase();
    const attributes = parseAttributes(match[2] ?? "");
    elements.push({ name, attributes });
    if (["script", "style", "textarea", "title"].includes(name)) rawTextElement = name;
  }
  return elements;
};

const sourceSetReferencesFrom = (sourceSet) => {
  const references = [];
  let index = 0;
  while (index < sourceSet.length) {
    while (sourceSet[index] === "," || /\s/.test(sourceSet[index] ?? "")) index += 1;
    if (index >= sourceSet.length) break;

    const isDataURL = sourceSet.slice(index, index + 5).toLowerCase() === "data:";
    let url = "";
    while (
      index < sourceSet.length &&
      !/\s/.test(sourceSet[index] ?? "") &&
      (isDataURL || sourceSet[index] !== ",")
    ) {
      url += sourceSet[index] ?? "";
      index += 1;
    }
    if (url !== "") references.push(url);
    while (index < sourceSet.length && sourceSet[index] !== ",") index += 1;
    if (sourceSet[index] === ",") index += 1;
  }
  return references;
};

const attributesFrom = (elements) =>
  elements.flatMap(({ name, attributes }) => {
    // Canonical URLs describe a deployment's preferred host/path, not navigation or assets.
    if (name === "link" && attributes.get("rel")?.split(/\s+/).includes("canonical")) return [];
    const directReferences = ["href", "src", "poster", "action", "data", "xlink:href"]
      .map((name) => attributes.get(name))
      .filter((value) => value !== undefined);
    const sourceSet = attributes.get("srcset") ?? "";
    const sourceSetReferences = sourceSetReferencesFrom(sourceSet);
    const styleReferences = [
      ...cssURLsFrom(attributes.get("style") ?? ""),
      ...cssURLsFrom(attributes.get("style-text") ?? ""),
    ];
    return [...directReferences, ...sourceSetReferences, ...styleReferences];
  });

const skipCSSWhitespaceAndComments = (css, start) => {
  let index = start;
  while (index < css.length) {
    if (/\s/.test(css[index] ?? "")) {
      index += 1;
    } else if (css.startsWith("/*", index)) {
      const commentEnd = css.indexOf("*/", index + 2);
      index = commentEnd === -1 ? css.length : commentEnd + 2;
    } else {
      break;
    }
  }
  return index;
};

const readCSSEscape = (css, start) => {
  const escaped = css.slice(start + 1);
  const hex = /^[0-9a-f]{1,6}/i.exec(escaped)?.[0];
  if (hex === undefined) {
    return { value: escaped[0] ?? "", nextIndex: Math.min(start + 2, css.length) };
  }
  const codePoint = Number.parseInt(hex, 16);
  let nextIndex = start + 1 + hex.length;
  if (/\s/.test(css[nextIndex] ?? "")) nextIndex += 1;
  const safeCodePoint =
    codePoint === 0 || codePoint > 0x10ffff || (codePoint >= 0xd800 && codePoint <= 0xdfff)
      ? 0xfffd
      : codePoint;
  return { value: String.fromCodePoint(safeCodePoint), nextIndex };
};

const readCSSString = (css, start) => {
  const quote = css[start] ?? "";
  let value = "";
  let index = start + 1;
  while (index < css.length && css[index] !== quote) {
    if (css[index] === "\\") {
      const escaped = readCSSEscape(css, index);
      value += escaped.value;
      index = escaped.nextIndex;
    } else {
      value += css[index] ?? "";
      index += 1;
    }
  }
  return { value, nextIndex: Math.min(index + 1, css.length) };
};

const readCSSIdentifier = (css, start) => {
  let value = "";
  let index = start;
  while (index < css.length) {
    const character = css[index] ?? "";
    if (character === "\\") {
      const escaped = readCSSEscape(css, index);
      value += escaped.value;
      index = escaped.nextIndex;
    } else if (/[a-z0-9_-]/i.test(character) || character.charCodeAt(0) >= 0x80) {
      value += character;
      index += 1;
    } else {
      break;
    }
  }
  return { value, nextIndex: index };
};

const readCSSURL = (css, start) => {
  const contentStart = skipCSSWhitespaceAndComments(css, start);
  const quote = css[contentStart];
  if (quote === '"' || quote === "'") {
    const parsed = readCSSString(css, contentStart);
    const close = skipCSSWhitespaceAndComments(css, parsed.nextIndex);
    return css[close] === ")" ? { ...parsed, nextIndex: close + 1 } : null;
  }

  let value = "";
  let index = contentStart;
  while (index < css.length && css[index] !== ")") {
    if (css.startsWith("/*", index)) {
      const commentEnd = css.indexOf("*/", index + 2);
      index = commentEnd === -1 ? css.length : commentEnd + 2;
    } else if (css[index] === "\\") {
      const escaped = readCSSEscape(css, index);
      value += escaped.value;
      index = escaped.nextIndex;
    } else {
      value += css[index] ?? "";
      index += 1;
    }
  }
  return css[index] === ")" ? { value: value.trim(), nextIndex: index + 1 } : null;
};

const cssURLsFrom = (css) => {
  const references = [];
  let index = 0;
  while (index < css.length) {
    if (css.startsWith("/*", index)) {
      const commentEnd = css.indexOf("*/", index + 2);
      index = commentEnd === -1 ? css.length : commentEnd + 2;
      continue;
    }

    const character = css[index] ?? "";
    if (character === '"' || character === "'") {
      index = readCSSString(css, index).nextIndex;
      continue;
    }

    if (css.slice(index, index + 7).toLowerCase() === "@import") {
      const importValue = skipCSSWhitespaceAndComments(css, index + 7);
      if (css[importValue] === '"' || css[importValue] === "'") {
        const parsed = readCSSString(css, importValue);
        references.push(parsed.value);
        index = parsed.nextIndex;
        continue;
      }
    }

    if (/[a-z_-]/i.test(character) || character === "\\") {
      const identifier = readCSSIdentifier(css, index);
      if (identifier.value.toLowerCase() === "url" && css[identifier.nextIndex] === "(") {
        const parsed = readCSSURL(css, identifier.nextIndex + 1);
        if (parsed !== null && !parsed.value.toLowerCase().startsWith("var(")) {
          references.push(parsed.value);
          index = parsed.nextIndex;
          continue;
        }
      }
      index = Math.max(identifier.nextIndex, index + 1);
    } else {
      index += 1;
    }
  }
  return references;
};

const fragmentsFrom = (html) =>
  new Set(
    parseElements(html).flatMap(({ name, attributes }) => [
      ...(attributes.has("id") ? [attributes.get("id")] : []),
      ...(name === "a" && attributes.has("name") ? [attributes.get("name")] : []),
    ]),
  );

const normalizeBase = (base) => {
  const segments = base.split("/").filter(Boolean);
  return segments.length === 0 ? "/" : `/${segments.join("/")}/`;
};

const decodeFragment = (fragment) => {
  try {
    return decodeURIComponent(fragment);
  } catch {
    return fragment;
  }
};

const resolveTarget = (source, reference, base) => {
  const basePath = normalizeBase(base);
  try {
    const pageURL = `https://docs.invalid${basePath}${source.replace(/index\.html$/, "")}`;
    const targetURL = new URL(reference, pageURL);
    const targetPath = decodeURIComponent(targetURL.pathname);
    if (!targetPath.startsWith(basePath)) {
      return { _tag: "Failure", reason: `link resolves outside base path ${basePath}` };
    }
    const relativePath = targetPath.slice(basePath.length);
    const file =
      relativePath === ""
        ? "index.html"
        : relativePath.endsWith("/")
          ? `${relativePath}index.html`
          : relativePath;
    return {
      _tag: "Success",
      file,
      fragment: decodeFragment(targetURL.hash.slice(1)),
    };
  } catch (error) {
    const reason = error instanceof Error ? error.message : String(error);
    return { _tag: "Failure", reason: `invalid URL or percent-encoding (${reason})` };
  }
};

export const checkDocumentLinks = (documents, base, siteOrigin = "https://docs.invalid") => {
  const errors = [];
  const fragmentCache = new Map();
  if (![...documents.keys()].some((source) => source.endsWith(".html"))) {
    return ["No built HTML documents were found."];
  }
  for (const [source, html] of documents) {
    const references = source.endsWith(".html")
      ? attributesFrom(parseElements(html))
      : source.endsWith(".css")
        ? cssURLsFrom(html)
        : [];
    for (const reference of references) {
      if (reference === "" || isExternal(reference, siteOrigin)) continue;
      const target = resolveTarget(source, reference, base);
      if (target._tag === "Failure") {
        errors.push(`${source}: ${reference}: ${target.reason}`);
        continue;
      }
      const routeFile = documents.has(target.file)
        ? target.file
        : !path.extname(target.file) && documents.has(`${target.file}/index.html`)
          ? `${target.file}/index.html`
          : target.file;
      const targetHTML = documents.get(routeFile);
      if (targetHTML === undefined) {
        errors.push(`${source}: ${reference}: missing ${target.file}`);
        continue;
      }
      if (target.fragment && /\.(?:html|svg)$/i.test(routeFile)) {
        const targetFragments = fragmentCache.get(routeFile) ?? fragmentsFrom(targetHTML);
        fragmentCache.set(routeFile, targetFragments);
        if (targetFragments.has(target.fragment)) continue;
        errors.push(
          `${source}: ${reference}: missing fragment #${target.fragment} in ${routeFile}`,
        );
      }
    }
  }
  return errors;
};

const filesIn = (directory, relative = "") =>
  readdirSync(path.join(directory, relative), { withFileTypes: true }).flatMap((entry) => {
    const entryPath = path.join(relative, entry.name);
    return entry.isDirectory() ? filesIn(directory, entryPath) : [entryPath];
  });

export const requiredDocPages = [
  "index.html",
  "apidocs/index.html",
  "examples/index.html",
  "font-attribution/index.html",
];

export const missingRequiredDocPages = (documents) =>
  requiredDocPages.filter((page) => !documents.has(page));

if (process.argv[1] !== undefined && path.resolve(process.argv[1]) === scriptPath) {
  const outputDirectory = path.resolve(process.argv[2] ?? "dist");
  const siteURL = new URL(docsBase, docsSite);
  const base = process.argv[3] ?? siteURL.pathname;
  const siteOrigin = process.argv[4] ?? new URL(docsSite).origin;
  const documents = new Map(
    filesIn(outputDirectory).map((file) => [
      file,
      readFileSync(path.join(outputDirectory, file), "utf8"),
    ]),
  );
  const missingPages = missingRequiredDocPages(documents).map(
    (page) => `Missing required docs page ${page}.`,
  );
  const errors = [...missingPages, ...checkDocumentLinks(documents, base, siteOrigin)];
  if (errors.length > 0) {
    console.error(errors.join("\n"));
    process.exit(1);
  }
  console.log(
    `Validated local links, assets, and fragments in ${documents.size} built files. External and canonical URLs were not checked.`,
  );
}
