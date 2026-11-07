import assert from "node:assert/strict";
import test from "node:test";
import { spawnSync } from "node:child_process";
import { mkdirSync, mkdtempSync, rmSync, writeFileSync } from "node:fs";
import os from "node:os";
import path from "node:path";
import { fileURLToPath } from "node:url";

import {
  checkDocumentLinks,
  emptyRequiredDocPages,
  missingRequiredDocPages,
  requiredDocPages,
} from "./check-doc-links.mjs";

const checkerPath = fileURLToPath(new URL("./check-doc-links.mjs", import.meta.url));

test("validates page, asset, and fragment links under a deployment base", () => {
  const pages = new Map([
    [
      "index.html",
      '<a href="/docs-site/apidocs/fetch/#headers">Headers</a><img src="/docs-site/logo.svg">',
    ],
    ["apidocs/fetch/index.html", '<h2 id="headers">Headers</h2>'],
    ["logo.svg", "<svg></svg>"],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), []);
});

test("resolves relative guide links from their page and detects missing targets", () => {
  const pages = new Map([
    ["examples/index.html", '<a href="../06-testing/">tests</a><a href="#missing">bad</a>'],
    ["06-testing/index.html", "<main>guide</main>"],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), [
    "examples/index.html: #missing: missing fragment #missing in examples/index.html",
  ]);
});

test("rejects absolute site links that omit the deployment base", () => {
  const pages = new Map([["index.html", '<a href="/apidocs/fetch/">Fetch</a>']]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), [
    "index.html: /apidocs/fetch/: link resolves outside base path /docs-site/",
  ]);
});

test("supports a root deployment base", () => {
  const pages = new Map([
    ["index.html", '<a href="/guide/">guide</a>'],
    ["guide/index.html", "<p>Guide</p>"],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/"), []);
});

test("rejects relative links that escape the deployment base", () => {
  const pages = new Map([
    ["index.html", '<a href="../guide/">guide</a>'],
    ["guide/index.html", "<p>Guide</p>"],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs/"), [
    "index.html: ../guide/: link resolves outside base path /docs/",
  ]);
});

test("does not strip an accidentally duplicated base path from relative URLs", () => {
  const pages = new Map([
    ["index.html", '<a href="docs/guide/">guide</a>'],
    ["guide/index.html", "<p>Guide</p>"],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs/"), [
    "index.html: docs/guide/: missing docs/guide/index.html",
  ]);
});

test("does not treat external links as local routes", () => {
  const pages = new Map([
    ["index.html", '<a href="https://example.com/missing#target">external</a>'],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), []);
});

test("validates absolute same-site links against built routes", () => {
  const pages = new Map([
    ["index.html", '<a href="https://docs.invalid/docs-site/guide/#valid">guide</a>'],
    ["guide/index.html", '<h2 id="valid">Guide</h2>'],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/", "https://docs.invalid"), []);
});

test("does not treat canonical metadata as a navigational route", () => {
  const pages = new Map([
    [
      "index.html",
      '<link rel="canonical" href="https://docs.invalid/docs-site/preferred/"><a href="/docs-site/guide/">guide</a>',
    ],
    ["guide/index.html", "<p>Guide</p>"],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/", "https://docs.invalid"), []);
});

test("validates SVG fragment targets as well as HTML fragments", () => {
  const pages = new Map([
    ["index.html", '<a href="/docs-site/assets/icons.svg#good">icon</a>'],
    ["assets/icons.svg", '<svg><symbol id="good"></symbol></svg>'],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), []);
});

test("does not split commas inside data URLs when checking srcset assets", () => {
  const pages = new Map([
    [
      "index.html",
      '<img srcset="data:image/svg+xml,%3Csvg%3E 1x, /docs-site/assets/second.svg 2x">',
    ],
    ["assets/second.svg", "<svg></svg>"],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), []);
});

test("finds stale implementation-module links and accepts unlinked internal type text", () => {
  const pages = new Map([
    [
      "apidocs/request/index.html",
      '<p>FetchTypes.headers</p><a href="/docs-site/apidocs/fetch-types/#headers">headers</a>',
    ],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), [
    "apidocs/request/index.html: /docs-site/apidocs/fetch-types/#headers: missing apidocs/fetch-types/index.html",
  ]);
});

test("ignores URL-like markup in code and script text", () => {
  const pages = new Map([
    [
      "index.html",
      `<pre><code>&lt;a href="/docs-site/not-a-route"&gt;</code></pre>
       <script>const sample = '<a href="/docs-site/not-a-route">'</script>
       <a href="/docs-site/guide/">guide</a>`,
    ],
    ["guide/index.html", "<p>Guide</p>"],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), []);
});

test("reports malformed percent-encoding and rejects an empty build", () => {
  const pages = new Map([
    ["index.html", '<a href="#%E0%A4%A">bad fragment</a><a href="bad%">bad path</a>'],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), [
    "index.html: #%E0%A4%A: missing fragment #%E0%A4%A in index.html",
    "index.html: bad%: invalid URL or percent-encoding (URI malformed)",
  ]);
  assert.deepEqual(checkDocumentLinks(new Map(), "/docs-site/"), [
    "No built HTML documents were found.",
  ]);
});

test("requires the docs home, API index, examples, and font-attribution pages", () => {
  const artifact = new Map([
    ["index.html", ""],
    ["apidocs/index.html", ""],
    ["examples/index.html", ""],
  ]);

  assert.deepEqual(missingRequiredDocPages(artifact), ["font-attribution/index.html"]);
});

test("normalizes numeric HTML entities and literal percent fragments", () => {
  const pages = new Map([
    [
      "index.html",
      '<a href="/docs/guide/#caf%C3%A9">accent</a><a href="/docs/guide/#%26%23233%3B">entity text</a><a href="/docs/guide/#100%">percent</a>',
    ],
    ["guide/index.html", '<p id="caf&#233;"></p><p id="&amp;#233;"></p><p id="100%"></p>'],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs/"), []);
});

test("checks local CSS imports, url() assets, and inline styles", () => {
  const pages = new Map([
    [
      "index.html",
      '<link rel="stylesheet" href="/docs-site/styles/site.css"><div style="background:url(/docs-site/assets/inline.svg)"></div><style>.icon{background:url("/docs-site/assets/inline.svg")}</style>',
    ],
    [
      "styles/site.css",
      String.raw`/* old asset: url("../removed.woff2") */ @import "../theme.css"; .icon { content: "url(../not-an-asset.svg)"; background: url("../assets/icon.svg"); src: u\72l("../assets/escaped.svg"); }`,
    ],
    ["theme.css", "body { color: black; }"],
    ["assets/inline.svg", "<svg></svg>"],
    ["assets/icon.svg", "<svg></svg>"],
    ["assets/escaped.svg", "<svg></svg>"],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), []);
});

test("reports missing assets from actual CSS url() tokens", () => {
  const pages = new Map([
    ["index.html", '<link rel="stylesheet" href="/docs-site/site.css">'],
    [
      "site.css",
      String.raw`/* url("/docs-site/comment.svg") */ .x{background:url("/docs-site/missing.svg")}`,
    ],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), [
    "site.css: /docs-site/missing.svg: missing missing.svg",
  ]);
});

test("reports missing assets from escaped CSS @import keywords", () => {
  const pages = new Map([
    ["index.html", '<link rel="stylesheet" href="/docs-site/site.css">'],
    [
      "site.css",
      String.raw`/* @import "/docs-site/comment.css"; */ @\69mport "/docs-site/missing.css";`,
    ],
  ]);

  assert.deepEqual(checkDocumentLinks(pages, "/docs-site/"), [
    "site.css: /docs-site/missing.css: missing missing.css",
  ]);
});

test("rejects zero-byte required pages in the built-site CLI", () => {
  const outputDirectory = mkdtempSync(path.join(os.tmpdir(), "webapi-empty-docs-"));
  try {
    for (const page of requiredDocPages) {
      const filePath = path.join(outputDirectory, page);
      mkdirSync(path.dirname(filePath), { recursive: true });
      writeFileSync(filePath, "");
    }
    const result = spawnSync(process.execPath, [checkerPath, outputDirectory, "/docs-site/"], {
      encoding: "utf8",
    });
    assert.notEqual(result.status, 0);
    assert.match(result.stderr, /Required docs page index\.html is empty\./);
  } finally {
    rmSync(outputDirectory, { recursive: true, force: true });
  }
});

test("requires all intended route pages and nonempty content", () => {
  const completeArtifact = new Map(requiredDocPages.map((page) => [page, "<html></html>"]));
  assert.deepEqual(missingRequiredDocPages(completeArtifact), []);
  assert.deepEqual(emptyRequiredDocPages(completeArtifact), []);

  const missingAttribution = new Map(
    requiredDocPages
      .filter((page) => page !== "font-attribution/index.html")
      .map((page) => [page, "<html></html>"]),
  );
  assert.deepEqual(missingRequiredDocPages(missingAttribution), ["font-attribution/index.html"]);
});
