import assert from "node:assert/strict";
import test from "node:test";

import { checkDocumentLinks } from "./check-doc-links.mjs";

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
    "index.html: /apidocs/fetch/: absolute link is outside base path /docs-site/",
  ]);
});

test("does not treat external links as local routes", () => {
  const pages = new Map([
    ["index.html", '<a href="https://example.com/missing#target">external</a>'],
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
