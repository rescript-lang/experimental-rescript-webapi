import test from "node:test";
import assert from "node:assert/strict";
import fs from "node:fs";

test("docs and CI point at the unified package layout", () => {
  const readme = fs.readFileSync("README.md", "utf8");
  const docsIndex = fs.readFileSync("docs/content/docs/index.mdx", "utf8");
  const docsPhilosophy = fs.readFileSync("docs/content/docs/philosophy.mdx", "utf8");
  const docsContributing = fs.readFileSync("docs/content/docs/contributing/api-modelling.mdx", "utf8");
  const docsLlm = fs.readFileSync("docs/llm.js", "utf8");
  const designSpec = fs.readFileSync(
    "docs/superpowers/specs/2026-04-22-unmonorepo-webapi-design.md",
    "utf8",
  );
  const workflow = fs.readFileSync(".github/workflows/ci.yml", "utf8");

  assert.match(readme, /npm i @rescript\/webapi@experimental/);
  assert.match(readme, /WebAPI\.Global/);
  assert.match(docsIndex, /ReScript WebAPI/);
  assert.match(docsIndex, /WebAPI\.Global/);
  assert.match(docsIndex, /location->WebAPI\.Location\.reload/);
  assert.match(docsPhilosophy, /open WebAPI\.Global/);
  assert.match(docsPhilosophy, /let myElement: WebAPI\.Element\.t = document->WebAPI\.Document\.createElement/);
  assert.match(docsPhilosophy, /let node: WebAPI\.Node\.t = element->WebAPI\.Element\.asNode/);
  assert.match(docsContributing, /open WebAPI\.Canvas/);
  assert.match(docsContributing, /open WebAPI\.DOM/);
  assert.match(designSpec, /WebAPI\.\<Feature\>/);
  assert.match(designSpec, /Use `WebAPI\.\*` spelling, not `WebApi\.\*`\./);
  assert.match(docsLlm, /\.\.\/src\/\*\/\*\*\/\*\.res/);
  assert.match(docsLlm, /WebAPI\.\$\{spec\.publicModule\}/);
  assert.match(workflow, /npm pack\b/);
  assert.match(workflow, /npm publish --access public --tag experimental/);
  assert.doesNotMatch(workflow, /--workspaces|publish --workspace|packages\/\*/);
});
