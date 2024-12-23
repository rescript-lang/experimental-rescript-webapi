import * as path from "node:path";
import { exec } from "node:child_process";
import { promisify } from "node:util";
import { readdirSync, existsSync, readFileSync } from "fs";
import { micromark } from "micromark";

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

async function getRescriptDoc(absoluteFilePath) {
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

export async function getDoc(absoluteFilePath) {
  const docInfo = await getRescriptDoc(absoluteFilePath);

  const types = docInfo.items
    .filter((item) => item.kind === "type")
    .sort((a, b) => a.name.localeCompare(b.name))
    .map((type) => {
      const documentation =
        type.docstrings && micromark(type.docstrings.join("\n"));
      return {
        name: type.name,
        documentation,
        signature: type.signature,
        detail: type.detail,
      };
    });

  const typesInOwnModule = new Set(types.map((t) => t.name));

  const typeHeadings = types.map((type) => ({
    depth: 3,
    slug: type.name,
    text: type.name,
  }));

  const values = docInfo.items
    .filter((item) => item.kind === "value")
    .sort((a, b) => a.name.localeCompare(b.name))
    .map((value) => {
      const documentation =
        value.docstrings && micromark(value.docstrings.join("\n"));
      return {
        name: value.name,
        documentation,
        signature: value.signature,
        detail: value.detail,
      };
    });

  const valueHeadings = values.map((value) => ({
    depth: 3,
    slug: value.name,
    text: value.name,
  }));

  return {
    docInfo,
    types,
    typesInOwnModule,
    typeHeadings,
    values,
    valueHeadings,
  };
}

function trimRescriptOutput(output) {
  return output
    .replace("// Generated by ReScript, PLEASE EDIT WITH CARE", "")
    .replace("/* response Not a pure module */", "")
    .trim();
}

const testDir = path.resolve(process.cwd(), "tests");
export const testFiles =
  readdirSync(testDir, { recursive: true })
    .filter(f => f.endsWith(".res"))
    .map(tf => {
      const sourcePath = path.join(testDir, tf);
      const source = readFileSync(sourcePath, "utf-8");
      const outputPath = sourcePath.replace(".res", ".js");
      const output = readFileSync(outputPath, "utf-8");

      const parts = tf.split(path.sep);
      const name = parts[parts.length - 1].replace("__tests.res", "");

      return {
        sourcePath: sourcePath.replace(testDir,""),
        source,
        output: trimRescriptOutput(output),
        outputPath: outputPath.replace(testDir,""),
        name,
      };
    })
    .sort((a, b) => a.name.localeCompare(b.name));