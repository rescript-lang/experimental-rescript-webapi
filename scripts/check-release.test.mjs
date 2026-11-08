import assert from "node:assert/strict";
import { spawn } from "node:child_process";
import { copyFileSync, mkdirSync, mkdtempSync, readFileSync, rmSync, writeFileSync } from "node:fs";
import { createServer } from "node:http";
import os from "node:os";
import path from "node:path";
import { test } from "node:test";

const metadata = {
  name: "@rescript/webapi",
  version: "1.0.0-alpha.1",
  publishConfig: { access: "public", provenance: true },
};
const releaseEnvironment = {
  GITHUB_REF: "refs/heads/main",
  GITHUB_EVENT_NAME: "workflow_dispatch",
};

const createProject = (t, { manifest = metadata, lockVersion = metadata.version } = {}) => {
  const directory = mkdtempSync(path.join(os.tmpdir(), "webapi-release-check-"));
  t.after(() => rmSync(directory, { recursive: true, force: true }));
  mkdirSync(path.join(directory, "scripts"));
  copyFileSync(
    new URL("./check-release.mjs", import.meta.url),
    path.join(directory, "scripts/check-release.mjs"),
  );
  writeFileSync(path.join(directory, "package.json"), JSON.stringify(manifest));
  writeFileSync(
    path.join(directory, "package-lock.json"),
    JSON.stringify({
      version: lockVersion,
      packages: { "": { name: metadata.name, version: lockVersion } },
    }),
  );
  writeFileSync(path.join(directory, ".npmrc"), "");
  writeFileSync(path.join(directory, "global.npmrc"), "");
  return directory;
};

const registryReplies = {
  published: {
    status: 200,
    body: {
      name: metadata.name,
      "dist-tags": { latest: metadata.version },
      versions: { [metadata.version]: metadata },
    },
  },
  unpublished: { status: 404, body: { error: "Not found" } },
  unavailable: { status: 503, body: { error: "Registry unavailable" } },
};

const startRegistry = async (t, reply = registryReplies.published) => {
  let requests = 0;
  const server = createServer((_request, response) => {
    requests += 1;
    response.writeHead(reply.status, { "content-type": "application/json" });
    response.end(JSON.stringify(reply.body));
  });
  t.after(
    () =>
      new Promise((resolve, reject) => {
        server.closeAllConnections();
        server.close((error) => (error ? reject(error) : resolve()));
      }),
  );
  await new Promise((resolve, reject) => {
    server.once("error", reject);
    server.listen(0, "127.0.0.1", resolve);
  });
  return {
    url: `http://127.0.0.1:${server.address().port}`,
    requestCount: () => requests,
  };
};

const runCheck = (directory, args, registry, environment = {}) =>
  new Promise((resolve, reject) => {
    const child = spawn(
      process.execPath,
      [path.join(directory, "scripts/check-release.mjs"), ...args],
      {
        cwd: directory,
        stdio: ["ignore", "pipe", "pipe"],
        timeout: 15_000,
        env: {
          ...process.env,
          GITHUB_REF: "refs/pull/1/merge",
          GITHUB_EVENT_NAME: "pull_request",
          npm_config_registry: registry.url,
          npm_config_cache: path.join(directory, "cache"),
          npm_config_userconfig: path.join(directory, ".npmrc"),
          npm_config_globalconfig: path.join(directory, "global.npmrc"),
          npm_config_noproxy: "127.0.0.1",
          npm_config_fetch_retries: "0",
          npm_config_fetch_timeout: "5000",
          npm_config_update_notifier: "false",
          ...environment,
        },
      },
    );
    let stdout = "";
    let stderr = "";
    child.stdout.on("data", (data) => {
      stdout += data;
    });
    child.stderr.on("data", (data) => {
      stderr += data;
    });
    child.once("error", reject);
    child.once("close", (status) => resolve({ status, output: `${stdout}\n${stderr}` }));
  });

test("pull-request metadata validation accepts a published version without a registry lookup", async (t) => {
  const directory = createProject(t);
  const registry = await startRegistry(t);
  const result = await runCheck(directory, [], registry);

  assert.equal(result.status, 0, result.output);
  assert.match(result.output, /Validated alpha metadata/);
  assert.equal(registry.requestCount(), 0);
});

for (const [name, fixture, diagnostic] of [
  [
    "non-alpha versions",
    { manifest: { ...metadata, version: "1.0.0" } },
    /Expected an explicit 1\.0\.0-alpha\.N version/,
  ],
  ["mismatched lock versions", { lockVersion: "1.0.0-alpha.2" }, /versions must match/],
  [
    "missing provenance",
    { manifest: { ...metadata, publishConfig: { access: "public" } } },
    /public access and provenance/,
  ],
]) {
  test(`pull-request metadata validation still rejects ${name}`, async (t) => {
    const directory = createProject(t, fixture);
    const registry = await startRegistry(t);
    const result = await runCheck(directory, [], registry);

    assert.notEqual(result.status, 0);
    assert.match(result.output, diagnostic);
    assert.equal(registry.requestCount(), 0);
  });
}

for (const mode of ["--check-unpublished", "--publish"]) {
  for (const [state, status, diagnostic] of [
    ["published", 1, /already published/],
    ["unpublished", 0, /Verified unpublished alpha version/],
    ["unavailable", 1, /Unable to verify/],
  ]) {
    test(`${mode} handles a ${state} registry result`, async (t) => {
      const directory = createProject(t);
      const registry = await startRegistry(t, registryReplies[state]);
      const result = await runCheck(directory, [mode], registry, releaseEnvironment);

      assert.equal(result.status, status, result.output);
      assert.match(result.output, diagnostic);
      assert.ok(registry.requestCount() > 0);
    });
  }
}

for (const [environment, diagnostic] of [
  [{ ...releaseEnvironment, GITHUB_REF: "refs/heads/feature" }, /only from refs\/heads\/main/],
  [{ ...releaseEnvironment, GITHUB_EVENT_NAME: "pull_request" }, /explicit workflow_dispatch/],
]) {
  test(`publishing rejects ${JSON.stringify(environment)} before a registry lookup`, async (t) => {
    const directory = createProject(t);
    const registry = await startRegistry(t);
    const result = await runCheck(directory, ["--publish"], registry, environment);

    assert.notEqual(result.status, 0);
    assert.match(result.output, diagnostic);
    assert.equal(registry.requestCount(), 0);
  });
}

test("unknown release flags fail instead of silently skipping checks", async (t) => {
  const directory = createProject(t);
  const registry = await startRegistry(t);
  const result = await runCheck(directory, ["--check-unpublshed"], registry);

  assert.notEqual(result.status, 0);
  assert.match(result.output, /Usage:/);
  assert.equal(registry.requestCount(), 0);
});

test("pull requests validate metadata while release dispatches also check the registry", () => {
  const workflow = readFileSync(
    new URL("../.github/workflows/release.yml", import.meta.url),
    "utf8",
  );
  const validateJob = workflow.slice(
    workflow.indexOf("\n  validate:"),
    workflow.indexOf("\n  publish:"),
  );

  assert.match(
    validateJob,
    /- name: Validate alpha package metadata\n\s+run: npm run check:release/,
  );
  assert.match(
    validateJob,
    /- name: Check unpublished release version\n\s+if: github\.event_name == 'workflow_dispatch'\n\s+run: node scripts\/check-release\.mjs --check-unpublished/,
  );
});
