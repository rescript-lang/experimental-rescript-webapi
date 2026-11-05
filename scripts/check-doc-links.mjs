import { readFileSync, readdirSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const scriptPath = fileURLToPath(import.meta.url);
const repoRoot = path.resolve(path.dirname(scriptPath), "..");

const decodeHTML = (value) =>
  value.replaceAll("&amp;", "&").replaceAll("&quot;", '"').replaceAll("&#39;", "'");

const isExternal = (url) => /^(?:[a-z][a-z\d+.-]*:|\/\/)/i.test(url);

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

const attributesFrom = (elements) =>
  elements.flatMap(({ attributes }) => {
    const directReferences = ["href", "src", "poster", "action", "data", "xlink:href"]
      .map((name) => attributes.get(name))
      .filter((value) => value !== undefined);
    const sourceSet = attributes.get("srcset") ?? "";
    const sourceSetReferences = sourceSet
      .split(",")
      .map((candidate) => candidate.trim().split(/\s+/, 1)[0])
      .filter(Boolean);
    return [...directReferences, ...sourceSetReferences];
  });

const fragmentsFrom = (html) =>
  new Set(
    parseElements(html).flatMap(({ name, attributes }) => [
      ...(attributes.has("id") ? [attributes.get("id")] : []),
      ...(name === "a" && attributes.has("name") ? [attributes.get("name")] : []),
    ]),
  );

const normalizeBase = (base) => `/${base.split("/").filter(Boolean).join("/")}/`;

const resolveTarget = (source, reference, base) => {
  const basePath = normalizeBase(base);
  const pageURL = `https://docs.invalid/${source.replace(/index\.html$/, "")}`;
  const targetURL = new URL(reference, pageURL);
  let targetPath = decodeURIComponent(targetURL.pathname);
  if (targetPath.startsWith(basePath)) {
    targetPath = targetPath.slice(basePath.length);
  } else if (reference.startsWith("/")) {
    return { _tag: "Failure", reason: `absolute link is outside base path ${basePath}` };
  } else {
    targetPath = targetPath.replace(/^\//, "");
  }
  const file =
    targetPath === ""
      ? "index.html"
      : targetPath.endsWith("/")
        ? `${targetPath}index.html`
        : targetPath;
  return { _tag: "Success", file, fragment: decodeURIComponent(targetURL.hash.slice(1)) };
};

export const checkDocumentLinks = (documents, base) => {
  const errors = [];
  const fragmentCache = new Map();
  for (const [source, html] of documents) {
    if (!source.endsWith(".html")) continue;
    for (const reference of attributesFrom(parseElements(html))) {
      if (reference === "" || isExternal(reference)) continue;
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
      if (target.fragment && routeFile.endsWith(".html")) {
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

if (process.argv[1] !== undefined && path.resolve(process.argv[1]) === scriptPath) {
  const outputDirectory = path.resolve(process.argv[2] ?? "dist");
  const base = process.argv[3] ?? "/experimental-rescript-webapi/";
  const documents = new Map(
    filesIn(outputDirectory).map((file) => [
      file,
      readFileSync(path.join(outputDirectory, file), "utf8"),
    ]),
  );
  const errors = checkDocumentLinks(documents, base);
  if (errors.length > 0) {
    console.error(errors.join("\n"));
    process.exit(1);
  }
  console.log(`Validated local links, assets, and fragments in ${documents.size} built files.`);
}
