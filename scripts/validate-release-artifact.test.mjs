import assert from "node:assert/strict";
import { spawnSync } from "node:child_process";
import { readFileSync } from "node:fs";
import { test } from "node:test";
import { fileURLToPath } from "node:url";
import { validateReleaseArtifact } from "./validate-release-artifact.mjs";

const workflow = readFileSync(new URL("../.github/workflows/release.yml", import.meta.url), "utf8");
const publishJob = workflow.slice(workflow.indexOf("\n  publish:"));

const expected = {
  name: "@rescript/webapi",
  version: "1.0.0-alpha.1",
};

const validArtifact = {
  name: expected.name,
  version: expected.version,
  publishConfig: { access: "public", provenance: true },
  scripts: {},
};

test("accepts the expected alpha artifact metadata", () => {
  assert.deepEqual(validateReleaseArtifact(expected, validArtifact), []);
});

test("rejects missing or false packed access and provenance", () => {
  for (const publishConfig of [
    undefined,
    { provenance: true },
    { access: "public" },
    { access: "restricted", provenance: true },
    { access: "public", provenance: false },
  ]) {
    assert.notDeepEqual(validateReleaseArtifact(expected, { ...validArtifact, publishConfig }), []);
  }
});

test("rejects packed registry and dist-tag overrides", () => {
  for (const override of [
    { registry: "https://registry.example.invalid" },
    { tag: "latest" },
    { tag: "alpha" },
  ]) {
    const errors = validateReleaseArtifact(expected, {
      ...validArtifact,
      publishConfig: { ...validArtifact.publishConfig, ...override },
    });
    assert.ok(errors.some((error) => error.includes("unexpected publishConfig overrides")));
  }
});

test("rejects package publish lifecycle scripts", () => {
  const errors = validateReleaseArtifact(expected, {
    ...validArtifact,
    scripts: { prepublishOnly: "node scripts/untrusted.js" },
  });
  assert.ok(errors.some((error) => error.includes("prepublishOnly")));
});

test("privileged workflow guard invokes Node directly without npm lifecycle hooks", () => {
  assert.match(publishJob, /run: node scripts\/check-release\.mjs --publish/);
  assert.doesNotMatch(publishJob, /npm run check:release/);
  assert.match(publishJob, /npm publish .*--ignore-scripts/);
  assert.match(publishJob, /validateReleaseArtifact\(\{ name, version \}, packed\)/);
});

test("direct release guard rejects non-main before a registry lookup", () => {
  const result = spawnSync(
    process.execPath,
    [fileURLToPath(new URL("./check-release.mjs", import.meta.url)), "--publish"],
    {
      encoding: "utf8",
      env: {
        ...process.env,
        GITHUB_EVENT_NAME: "workflow_dispatch",
        GITHUB_REF: "refs/heads/release-branch",
      },
    },
  );

  assert.notEqual(result.status, 0);
  assert.match(`${result.stdout}\n${result.stderr}`, /only from refs\/heads\/main/);
});
