import { execSync, spawnSync } from "child_process";
import * as fs from "fs";
import { fileURLToPath, pathToFileURL } from "url";
import * as path from "path";
import { exit } from "process";

const currentFileName = fileURLToPath(import.meta.url);
const currentDir = path.dirname(currentFileName);
const repoRoot = path.resolve(currentDir, "..");
const testsDir = path.join(repoRoot, "tests");
const rescriptConfig = JSON.parse(fs.readFileSync(path.join(repoRoot, "rescript.json"), "utf8"));
const compiledSuffix = rescriptConfig.suffix ?? ".js";
const fixtureCategories = JSON.parse(fs.readFileSync(path.join(testsDir, "fixtures.json"), "utf8"));

const discoverFixtures = (directory, relativeDirectory = "") =>
  fs.readdirSync(directory, { withFileTypes: true }).flatMap((entry) => {
    const relativePath = path.join(relativeDirectory, entry.name);
    const absolutePath = path.join(directory, entry.name);
    if (entry.isDirectory()) {
      return discoverFixtures(absolutePath, relativePath);
    }
    return entry.isFile() && entry.name.endsWith(".res") ? [relativePath] : [];
  });

const discoveredFixtures = discoverFixtures(testsDir)
  .map((fixture) => fixture.split(path.sep).join("/"))
  .sort();
const categorizedFixtures = [
  ...fixtureCategories.compileOnly,
  ...fixtureCategories.documentationExamples,
  ...fixtureCategories.nodeRuntime,
  ...fixtureCategories.browserRuntime,
].sort();
if (JSON.stringify(discoveredFixtures) !== JSON.stringify(categorizedFixtures)) {
  throw new Error(
    `Fixture category mismatch.\nDiscovered: ${discoveredFixtures.join(", ")}\nCategorized: ${categorizedFixtures.join(", ")}`,
  );
}
const runtimeTests = fixtureCategories.nodeRuntime;

const compiledRuntimeTests = runtimeTests.map((testFile) =>
  testFile.replace(/\.res$/, compiledSuffix),
);

// Compile all tests
execSync("npm run build", { cwd: repoRoot, stdio: "inherit" });

const successGreen = "\x1b[32m";
const errorRed = "\x1b[31m";
const resetColor = "\x1b[0m";

for (const testFile of compiledRuntimeTests) {
  const absoluteTestFile = path.join(testsDir, testFile);
  const result = spawnSync(
    process.execPath,
    [
      "--input-type=module",
      "--eval",
      `await import(${JSON.stringify(pathToFileURL(absoluteTestFile).href)})`,
    ],
    {
      cwd: repoRoot,
      encoding: "utf8",
    },
  );

  if (result.status !== 0) {
    console.log(`${errorRed}❌ Runtime test failed: ${testFile}${resetColor}`);
    if (result.stdout) {
      console.log(result.stdout);
    }
    if (result.stderr) {
      console.error(result.stderr);
    }
    exit(result.status ?? 1);
  }

  console.log(`${successGreen}✓ ${testFile}${resetColor}`);
}

exit(0);
