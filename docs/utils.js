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

export function createAPIModuleLink(moduleName) {
  // This function is called before import.meta.env.BASE_URL is set.
  // So, I'm hardcoding the path here.
  return `apidocs/${toKebabCase(moduleName)}`;
}

export function createTypeModuleLink(parentModuleLink, typeName) {
  return `${parentModuleLink}/${toKebabCase(typeName)}`;
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
      const filePath = path.join(folder, file);

      const moduleName = file
        .replace("$", "")
        .replace(folder, "")
        .replace(".res", "");
      const apiRouteParameter = toKebabCase(moduleName);
      const link = createTypeModuleLink(parentModuleLink, moduleName);
      const typeName = moduleName[0].toLocaleLowerCase() + moduleName.slice(1);

      return [
        typeName,
        {
          filePath,
          moduleName,
          link,
          apiRouteParameter,
        },
      ];
    });
}

function mapRescriptFile(srcDir, file) {
  const moduleName = path.basename(file, ".res").replace("$", "");
  const filePath = path.join(srcDir, file);
  const link = createAPIModuleLink(moduleName);
  const items = Object.fromEntries(mapTypeModules(link, filePath));

  return {
    filePath,
    moduleName,
    link,
    apiRouteParameter: toKebabCase(moduleName),
    items,
  };
}

const srcDir = path.resolve(process.cwd(), "src");
export const apiModules = readdirSync(srcDir).filter(f => f.endsWith(".res")).map(r => mapRescriptFile(srcDir, r));

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
