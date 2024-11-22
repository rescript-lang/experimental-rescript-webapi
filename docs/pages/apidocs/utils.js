import * as path from "node:path";
import { exec } from "node:child_process";
import { promisify } from "node:util";
import { readdirSync, existsSync } from "fs";

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

function mapTypeModules(parentModuleLink, file) {
  const folder = file.replace(".res", "");

  if (!existsSync(folder)) {
    return [];
  }

  const files = readdirSync(folder);
  return files
    .filter((f) => f.endsWith(".res"))
    .map((file) => {
      const fullPath = path.join(folder, file);

      const moduleName = file
        .replace("$", "")
        .replace(folder, "")
        .replace(".res", "");
      const apiRouteParameter = toKebabCase(moduleName);
      const link = `${parentModuleLink}/${apiRouteParameter}`;
      const typeName = moduleName[0].toLocaleLowerCase() + moduleName.slice(1);

      return [
        typeName,
        {
          fullPath,
          moduleName,
          link,
          apiRouteParameter,
        },
      ];
    });
}

function mapRescriptFile(file) {
  const moduleName = path
    .basename(file, ".res")
    .replace("$", "")
    .replace("API", " API");
  const filePath = path.join(import.meta.dirname, file);
  const link = createModuleLink(moduleName);
  const items = Object.fromEntries(mapTypeModules(link, filePath));

  return {
    filePath,
    moduleName,
    link,
    apiRouteParameter: toKebabCase(moduleName),
    items,
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
