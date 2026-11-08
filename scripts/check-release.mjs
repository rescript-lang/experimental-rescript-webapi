import { spawnSync } from "node:child_process";
import { readFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const repoRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const packageJson = JSON.parse(readFileSync(path.join(repoRoot, "package.json"), "utf8"));
const lockFile = JSON.parse(readFileSync(path.join(repoRoot, "package-lock.json"), "utf8"));
const versionPattern = /^1\.0\.0-alpha\.[1-9]\d*$/;
const args = process.argv.slice(2);
const mode = args[0];

if (
  args.length > 1 ||
  (mode !== undefined && mode !== "--check-unpublished" && mode !== "--publish")
) {
  throw new Error("Usage: node scripts/check-release.mjs [--check-unpublished | --publish]");
}

if (!versionPattern.test(packageJson.version)) {
  throw new Error(`Expected an explicit 1.0.0-alpha.N version; received ${packageJson.version}.`);
}
if (
  lockFile.version !== packageJson.version ||
  lockFile.packages?.[""]?.version !== packageJson.version
) {
  throw new Error("package.json and package-lock.json versions must match.");
}
if (
  packageJson.publishConfig?.access !== "public" ||
  packageJson.publishConfig?.provenance !== true
) {
  throw new Error("Alpha packages must retain public access and provenance configuration.");
}
const publishRequested = mode === "--publish";
if (publishRequested && process.env.GITHUB_REF !== "refs/heads/main") {
  throw new Error("Real alpha publication is allowed only from refs/heads/main.");
}
if (publishRequested && process.env.GITHUB_EVENT_NAME !== "workflow_dispatch") {
  throw new Error("Real alpha publication requires an explicit workflow_dispatch.");
}

const packageReference = `${packageJson.name}@${packageJson.version}`;
if (mode === "--check-unpublished" || publishRequested) {
  const published = spawnSync("npm", ["view", packageReference, "version"], {
    cwd: repoRoot,
    encoding: "utf8",
  });
  const registryOutput = `${published.stdout ?? ""}\n${published.stderr ?? ""}`;
  if (published.status === 0) {
    throw new Error(`${packageReference} is already published; increment the alpha version.`);
  }
  if (!/\bE404\b|404 Not Found/.test(registryOutput)) {
    throw new Error(`Unable to verify that ${packageReference} is unpublished:\n${registryOutput}`);
  }
}

if (publishRequested) {
  console.log(`Verified unpublished alpha version ${packageReference} for the main branch.`);
} else if (mode === "--check-unpublished") {
  console.log(`Verified unpublished alpha version ${packageReference}; expected dist-tag: alpha.`);
} else {
  console.log(
    `Validated alpha metadata for ${packageReference}; registry availability not checked.`,
  );
}
