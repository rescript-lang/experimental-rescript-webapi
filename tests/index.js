import { execSync } from "child_process";
import { existsSync } from "fs";
import { fileURLToPath } from "url";
import * as path from "path";
import { exit } from "process";

const currentFileName = fileURLToPath(import.meta.url);
const currentDir = path.dirname(currentFileName);
const repoRoot = path.resolve(currentDir, "..");
const testsDir = path.join(repoRoot, "tests");
const sameNameModules = [
  "Clipboard",
  "Event",
  "File",
  "Geolocation",
  "History",
  "IntersectionObserver",
  "MediaCapabilities",
  "MediaSession",
  "MutationObserver",
  "Notification",
  "Performance",
  "Permissions",
  "RemotePlayback",
  "ResizeObserver",
  "ServiceWorker",
  "URL",
];

for (const moduleName of sameNameModules) {
  const rootRes = path.join(repoRoot, "src", `${moduleName}.res`);
  const rootJs = path.join(repoRoot, "src", `${moduleName}.js`);
  const nestedRes = path.join(repoRoot, "src", moduleName, `${moduleName}.res`);
  const nestedJs = path.join(repoRoot, "src", moduleName, `${moduleName}.js`);

  if (existsSync(rootRes) || existsSync(rootJs)) {
    console.error(
      `Flattened ${moduleName} module files should live in src/${moduleName}/ instead of src/.`,
    );
    exit(1);
  }

  if (!existsSync(nestedRes) || !existsSync(nestedJs)) {
    console.error(
      `Expected nested ${moduleName} module files in src/${moduleName}/.`,
    );
    exit(1);
  }
}

// Compile all tests
execSync("npm run build", { cwd: repoRoot, stdio: "inherit" });

const successGreen = "\x1b[32m";
const warningYellow = "\x1b[33m";
const resetColor = "\x1b[0m";

// Assert nothing changed
const gitDff = execSync("git ls-files --modified .", {
  cwd: testsDir,
}).toString();
if (!gitDff) {
  console.log(`${successGreen}✅ No unstaged tests difference!${resetColor}`);
  exit(0);
} else {
  console.log(
    `${warningYellow}⚠️ There are unstaged differences in tests! Did you break a test?\n${gitDff}${resetColor}`,
  );
  execSync("git --no-pager diff .", { stdio: "inherit", cwd: testsDir });
  exit(1);
}
