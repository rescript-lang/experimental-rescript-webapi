import { spawnSync } from "node:child_process";
import { existsSync, mkdirSync, mkdtempSync, readFileSync, rmSync, writeFileSync } from "node:fs";
import os from "node:os";
import path from "node:path";
import { fileURLToPath, pathToFileURL } from "node:url";

const repoRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const packageJson = JSON.parse(readFileSync(path.join(repoRoot, "package.json"), "utf8"));
const compilerVersion = "13.0.0-alpha.5";
if (
  packageJson.devDependencies.rescript !== compilerVersion ||
  packageJson.peerDependencies.rescript !== ">=13.0.0-alpha.5 <13.0.0"
) {
  throw new Error("The tested compiler and package peer range are inconsistent.");
}
const requiredFiles = ["LICENSE", "README.md", "package.json", "rescript.json"];
const forbiddenPaths = /^(?:tests|scripts|docs|\.github|node_modules|lib|dist)\//;

const runCommand = (command, args, cwd) => {
  const result = spawnSync(command, args, { cwd, encoding: "utf8" });
  const output = `${result.stdout ?? ""}\n${result.stderr ?? ""}`;
  if (result.error || result.status !== 0) {
    throw new Error(`${command} ${args.join(" ")} failed.\n${result.error?.message ?? output}`);
  }
  return output;
};

const validateTarballFiles = (files) => {
  const paths = files.map(({ path: filePath }) => filePath);
  const missingFiles = requiredFiles.filter((filePath) => !paths.includes(filePath));
  const invalidFiles = paths.filter(
    (filePath) =>
      forbiddenPaths.test(filePath) ||
      (!requiredFiles.includes(filePath) &&
        !(filePath.startsWith("src/") && /\.(?:res|resi)$/.test(filePath)) &&
        filePath !== "LICENSE" &&
        filePath !== "README.md"),
  );
  if (missingFiles.length > 0 || invalidFiles.length > 0) {
    throw new Error(
      `Unexpected package contents. Missing: ${missingFiles.join(", ") || "none"}. Unexpected: ${invalidFiles.join(", ") || "none"}.`,
    );
  }
  if (!paths.some((filePath) => filePath.startsWith("src/") && filePath.endsWith(".res"))) {
    throw new Error("The package tarball contains no ReScript source files.");
  }
  if (!paths.some((filePath) => filePath.startsWith("src/") && filePath.endsWith(".resi"))) {
    throw new Error("The package tarball contains no ReScript interface files.");
  }
};

const writeProject = (directory, sourceFile, features) => {
  const sourceDirectory = path.join(directory, "src");
  const fixturePath = path.resolve(repoRoot, sourceFile);
  if (!fixturePath.startsWith(`${path.join(repoRoot, "scripts")}${path.sep}`)) {
    throw new Error(`Consumer fixture must be under scripts/: ${sourceFile}`);
  }
  mkdirSync(sourceDirectory, { recursive: true });
  writeFileSync(path.join(directory, "package.json"), '{"type":"module"}\n');
  writeFileSync(
    path.join(directory, "rescript.json"),
    `${JSON.stringify(
      {
        name: "packed-webapi-consumer",
        sources: [{ dir: "src" }],
        dependencies:
          features === null ? ["@rescript/webapi"] : [{ name: "@rescript/webapi", features }],
        "experimental-features": { LetUnwrap: true },
        warnings: { error: "+8" },
        "package-specs": { module: "esmodule", "in-source": true },
      },
      null,
      2,
    )}\n`,
  );
  writeFileSync(path.join(sourceDirectory, "Consumer.res"), readFileSync(fixturePath));
};

const compilerCli = (directory) =>
  path.join(directory, "node_modules", "rescript", "cli", "rescript.js");

const compile = (directory, expectedFailure = null) => {
  const cli = compilerCli(directory);
  const clean = spawnSync(process.execPath, [cli, "clean"], { cwd: directory });
  if (clean.status !== 0) {
    throw new Error("Installed compiler failed to clean the consumer project.");
  }
  const result = spawnSync(process.execPath, [cli, "build", "--prod"], {
    cwd: directory,
    encoding: "utf8",
  });
  const output = `${result.stdout ?? ""}\n${result.stderr ?? ""}`
    .replace(/\u001b\[[0-9;]*m/g, "")
    .replace(/\s+/g, " ");
  if (expectedFailure === null && result.status !== 0) {
    throw new Error(`Consumer failed to compile:\n${output}`);
  }
  const diagnosticMatches =
    expectedFailure instanceof RegExp
      ? expectedFailure.test(output)
      : typeof expectedFailure === "string" && output.includes(expectedFailure);
  if (expectedFailure !== null && (result.status === 0 || !diagnosticMatches)) {
    throw new Error(
      `Consumer did not fail with the expected diagnostic ${expectedFailure}; exit status ${result.status}:\n${output}`,
    );
  }
};

const verifyUnsupportedCompiler = (directory, tarballPath) => {
  mkdirSync(directory);
  writeFileSync(path.join(directory, "package.json"), '{"type":"module"}\n');
  const result = spawnSync(
    "npm",
    ["install", "--no-audit", "--no-fund", "--no-save", tarballPath, "rescript@12.3.1"],
    { cwd: directory, encoding: "utf8" },
  );
  const output = `${result.stdout ?? ""}\n${result.stderr ?? ""}`;
  if (
    result.status === 0 ||
    !output.includes("@rescript/webapi") ||
    !output.includes(">=13.0.0-alpha.5 <13.0.0")
  ) {
    throw new Error(
      `Unsupported compiler installation did not explain the peer constraint:\n${output}`,
    );
  }
};

const checkConsumers = async () => {
  const tempDirectory = mkdtempSync(path.join(os.tmpdir(), "webapi-packed-consumer-"));
  try {
    const negativeOnly = process.argv.includes("--negative-only");
    const suppliedArtifact = process.argv.slice(2).find((argument) => !argument.startsWith("--"));
    let tarballPath;
    let packagedFiles;
    if (suppliedArtifact === undefined) {
      const packOutput = runCommand(
        "npm",
        ["pack", "--json", "--pack-destination", tempDirectory],
        repoRoot,
      );
      const [pack] = JSON.parse(packOutput);
      tarballPath = path.join(tempDirectory, pack.filename);
      packagedFiles = pack.files;
    } else {
      tarballPath = path.resolve(repoRoot, suppliedArtifact);
      if (!existsSync(tarballPath)) {
        throw new Error(`Packed artifact does not exist: ${tarballPath}`);
      }
      packagedFiles = runCommand("tar", ["-tzf", tarballPath], repoRoot)
        .split(/\r?\n/)
        .filter((filePath) => filePath.startsWith("package/"))
        .map((filePath) => ({ path: filePath.slice("package/".length) }));
    }
    validateTarballFiles(packagedFiles);
    const packedMetadata =
      suppliedArtifact === undefined
        ? packageJson
        : JSON.parse(runCommand("tar", ["-xOf", tarballPath, "package/package.json"], repoRoot));
    if (
      packedMetadata.name !== packageJson.name ||
      packedMetadata.version !== packageJson.version ||
      !/^1\.0\.0-alpha\.[1-9]\d*$/.test(packedMetadata.version)
    ) {
      throw new Error(
        "Packed artifact name/version does not match the explicit alpha package metadata.",
      );
    }
    const publishLifecycleScripts = [
      "prepare",
      "prepack",
      "prepublishOnly",
      "publish",
      "postpublish",
    ];
    const configuredPublishScripts = publishLifecycleScripts.filter(
      (scriptName) => packedMetadata.scripts?.[scriptName] !== undefined,
    );
    if (configuredPublishScripts.length > 0) {
      throw new Error(
        `Packed artifact has lifecycle scripts that would execute during publish: ${configuredPublishScripts.join(", ")}.`,
      );
    }
    const projectDirectory = path.join(tempDirectory, "project");
    mkdirSync(projectDirectory);
    writeFileSync(path.join(projectDirectory, "package.json"), '{"type":"module"}\n');
    runCommand(
      "npm",
      [
        "install",
        "--no-audit",
        "--no-fund",
        "--no-save",
        tarballPath,
        `rescript@${compilerVersion}`,
      ],
      projectDirectory,
    );
    console.log(`[ok] installed tarball with supported ReScript ${compilerVersion}`);

    verifyUnsupportedCompiler(path.join(tempDirectory, "unsupported"), tarballPath);
    console.log("[ok] unsupported ReScript version rejected with peer-range diagnostic");

    if (!negativeOnly) {
      const scenarios = [
        { name: "default", fixture: "scripts/consumer-default.res", features: null },
        {
          name: "Fetch-only",
          fixture: "scripts/consumer-fetch.res",
          features: ["WebAPI.Fetch"],
        },
        {
          name: "SafeFetch",
          fixture: "scripts/consumer-safe-fetch.res",
          features: ["WebAPI.SafeFetch"],
        },
        {
          name: "Fetch-only SafeFetch rejection",
          fixture: "scripts/consumer-safe-fetch-disabled.res",
          features: ["WebAPI.Fetch"],
          expectedFailure: /The module or file (?:WebAPI\.)?SafeFetch can't be found\./,
        },
      ];

      for (const scenario of scenarios) {
        writeProject(projectDirectory, scenario.fixture, scenario.features);
        compile(projectDirectory, scenario.expectedFailure ?? null);
        console.log(`[ok] packed ${scenario.name} consumer`);
      }

      writeProject(projectDirectory, "scripts/consumer-runtime.res", ["WebAPI.Fetch"]);
      compile(projectDirectory);
      runCommand(
        process.execPath,
        [
          "--input-type=module",
          "--eval",
          `await import(${JSON.stringify(pathToFileURL(path.join(projectDirectory, "src/Consumer.js")).href)})`,
        ],
        projectDirectory,
      );
      console.log(`[ok] packed consumer runtime using ReScript ${compilerVersion}`);
    }

    const negativeCases = JSON.parse(
      readFileSync(path.join(repoRoot, "scripts/negative-fixtures.json"), "utf8"),
    );
    if (negativeOnly && negativeCases.length === 0) {
      throw new Error("No negative consumer fixtures are registered.");
    }
    for (const negativeCase of negativeCases) {
      writeProject(projectDirectory, negativeCase.fixture, negativeCase.features);
      compile(projectDirectory, negativeCase.expectedDiagnostic);
      console.log(`[ok] expected rejection: ${negativeCase.name}`);
    }
    console.log(`[ok] tarball contents (${packagedFiles.length} files)`);
  } finally {
    rmSync(tempDirectory, { recursive: true, force: true });
  }
};

checkConsumers().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
