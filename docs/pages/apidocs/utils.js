import * as path from "node:path";
import { exec } from "node:child_process";
import { promisify } from "node:util";

const execAsync = promisify(exec);

function toKebabCase(input) {
  return input
    .replace(/([a-z])([A-Z])/g, "$1-$2") // Insert dash between lowercase and uppercase
    .replace(/[\s_]+/g, "-") // Replace spaces or underscores with dash
    .toLowerCase(); // Convert to lowercase
}

export function createModuleLink(moduleName) {
  return `/apidocs/${toKebabCase(moduleName)}`;
}

function mapRescriptFile(file) {
  const moduleName = path
    .basename(file, ".res")
    .replace("$", "")
    .replace("API", " API");
  const link = createModuleLink(moduleName);
  return {
    filePath: path.join(import.meta.dirname, file),
    moduleName,
    link,
    apiRoute: toKebabCase(moduleName),
  };
}

export const apiModules = Object.keys(
  import.meta.glob("../../../src/*.res"),
).map(mapRescriptFile);

export const fileModules = Object.keys(
  import.meta.glob("../../../src/**/*.res"),
).map(mapRescriptFile);

export async function getDoc(absoluteFilePath) {
  const { stdout, stderr } = await execAsync(
    `rescript-tools doc ${absoluteFilePath}`,
    {
      maxBuffer: 1024 * 1024 * 10, // Increase buffer to 10 MB
    },
  );
  if (stderr) {
    throw new Error(stderr);
  }
  return JSON.parse(stdout);
}
