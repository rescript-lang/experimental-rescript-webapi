import test from "node:test";
import assert from "node:assert/strict";
import fs from "node:fs";

test("docs and CI point at the unified package layout", () => {
  const readme = fs.readFileSync("README.md", "utf8");
  const docsIndex = fs.readFileSync("docs/content/docs/index.mdx", "utf8");
  const docsLlm = fs.readFileSync("docs/llm.js", "utf8");
  const workflow = fs.readFileSync(".github/workflows/ci.yml", "utf8");

  assert.match(readme, /npm i @rescript\/webapi@experimental/);
  assert.match(readme, /WebApi\.DOM\.Global/);
  assert.match(docsIndex, /WebApi\.DOM\.Global/);
  assert.match(docsLlm, /\.\.\/src\/\*\/\*\*\/\*\.res/);
  assert.match(workflow, /npm pack\b/);
  assert.match(workflow, /npm publish --access public --tag experimental/);
  assert.doesNotMatch(workflow, /--workspaces|publish --workspace|packages\/\*/);
});
