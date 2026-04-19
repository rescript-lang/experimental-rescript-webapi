import { spawnSync } from "node:child_process";
import { existsSync, mkdtempSync, readdirSync, readFileSync, rmSync, writeFileSync } from "node:fs";
import { tmpdir } from "node:os";
import path from "node:path";

const root = process.cwd();
const rootPackageJson = JSON.parse(readFileSync(path.join(root, "package.json"), "utf8"));
const args = new Set(process.argv.slice(2));

const publish = args.has("--publish");
const force = args.has("--force");
const list = args.has("--list");
const version = readArg("--version") ?? "0.1.0-pre-alpha.0";
const tag = readArg("--tag") ?? "pre-alpha";
const otp = readArg("--otp");
const registry = readArg("--registry");
const timeout = Number(readArg("--timeout") ?? "30000");

function readArg(name) {
  const prefix = `${name}=`;
  const value = process.argv.slice(2).find((arg) => arg.startsWith(prefix));
  return value ? value.slice(prefix.length) : undefined;
}

function npm(args, options = {}) {
  const result = spawnSync("npm", args, {
    cwd: root,
    encoding: "utf8",
    stdio: options.stdio ?? "pipe",
    timeout,
  });

  return result;
}

function npmViewPackageExists(name) {
  const args = ["view", name, "version", "--json"];
  if (registry) args.push("--registry", registry);

  const result = npm(args);
  if (result.status === 0) {
    return true;
  }

  const output = `${result.stdout}\n${result.stderr}`;
  if (output.includes("E404") || output.includes("404 Not Found")) {
    return false;
  }

  throw new Error(`Could not check npm package ${name}:\n${output}`);
}

function workspacePackagePaths() {
  return rootPackageJson.workspaces.flatMap((workspace) => {
    if (!workspace.endsWith("/*")) {
      throw new Error(`Unsupported workspace pattern: ${workspace}`);
    }

    const workspaceRoot = path.join(root, workspace.slice(0, -2));
    const directories = readdirSync(workspaceRoot, { withFileTypes: true })
      .filter((entry) => entry.isDirectory())
      .map((entry) => path.join(workspaceRoot, entry.name))
      .sort();

    return directories
      .map((directory) => path.join(directory, "package.json"))
      .filter((packageJsonPath) => existsSync(packageJsonPath));
  });
}

function createPlaceholderPackage(originalPackageJson) {
  return {
    name: originalPackageJson.name,
    version,
    description: `Placeholder package for ${originalPackageJson.name}. Real releases are published from the monorepo workspaces.`,
    license: originalPackageJson.license ?? rootPackageJson.license,
    repository: rootPackageJson.repository,
    bugs: rootPackageJson.bugs,
    homepage: rootPackageJson.homepage,
    type: "module",
    files: ["README.md"],
    publishConfig: {
      access: "public",
    },
    peerDependencies: originalPackageJson.peerDependencies,
  };
}

function publishPlaceholder(originalPackageJson) {
  const temporaryDirectory = mkdtempSync(path.join(tmpdir(), "webapi-package-placeholder-"));
  const packageJson = createPlaceholderPackage(originalPackageJson);

  writeFileSync(path.join(temporaryDirectory, "package.json"), `${JSON.stringify(packageJson, null, 2)}\n`);
  writeFileSync(
    path.join(temporaryDirectory, "README.md"),
    `# ${originalPackageJson.name}\n\nThis placeholder package reserves the package name. Real releases are published from https://github.com/rescript-lang/experimental-rescript-webapi.\n`,
  );

  const publishArgs = ["publish", temporaryDirectory, "--access", "public", "--tag", tag, "--provenance=false"];
  if (!publish) publishArgs.push("--dry-run");
  if (otp) publishArgs.push("--otp", otp);
  if (registry) publishArgs.push("--registry", registry);

  const result = npm(publishArgs, { stdio: "inherit" });
  rmSync(temporaryDirectory, { recursive: true, force: true });

  if (result.status !== 0) {
    throw new Error(`npm publish failed for ${originalPackageJson.name}`);
  }
}

const packageJsonPaths = workspacePackagePaths();
const packages = packageJsonPaths.map((packageJsonPath) => {
  const packageJson = JSON.parse(readFileSync(packageJsonPath, "utf8"));
  return { packageJsonPath, packageJson };
});

if (list) {
  for (const { packageJson } of packages) {
    console.log(packageJson.name);
  }
  process.exit(0);
}

for (const { packageJson } of packages) {
  if (!packageJson.name) continue;

  const exists = npmViewPackageExists(packageJson.name);
  if (exists && !force) {
    console.log(`skip ${packageJson.name}: already exists on npm`);
    continue;
  }

  const action = publish ? "publish" : "dry-run";
  console.log(`${action} ${packageJson.name}@${version} with dist-tag ${tag}`);
  publishPlaceholder(packageJson);
}

if (!publish) {
  console.log("\nDry run only. Re-run with --publish to create missing packages on npm.");
}
