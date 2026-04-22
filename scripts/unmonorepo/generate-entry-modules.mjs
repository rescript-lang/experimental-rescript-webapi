import fs from "node:fs";
import path from "node:path";
import { featureSpecs, publicNameForLeafModule } from "./feature-spec.mjs";

export function readModuleLeaves(featureDir) {
  return fs
    .readdirSync(featureDir)
    .filter((name) => name.endsWith(".res"))
    .map((name) => path.basename(name, ".res"))
    .filter((leaf) => !featureSpecs.some((spec) => spec.publicModule === leaf));
}

export function renderEntryModule({ existingSource = "", internalPrefix, moduleLeaves }) {
  const aliases = moduleLeaves
    .sort()
    .map((leaf) => `module ${publicNameForLeafModule(leaf, internalPrefix)} = ${leaf}`)
    .join("\n");

  return [existingSource.trimEnd(), aliases].filter(Boolean).join("\n\n");
}

export function generateEntryModules(rootDir) {
  for (const spec of featureSpecs) {
    const featureDir = path.join(rootDir, "src", spec.dirName);
    if (!fs.existsSync(featureDir)) continue;

    const entryPath = path.join(featureDir, `${spec.publicModule}.res`);
    const existingSource = fs.existsSync(entryPath) ? fs.readFileSync(entryPath, "utf8").trimEnd() : "";
    const moduleLeaves = readModuleLeaves(featureDir).filter((leaf) => leaf !== spec.publicModule);
    const output = renderEntryModule({
      publicModule: spec.publicModule,
      existingSource,
      internalPrefix: spec.internalPrefix,
      moduleLeaves,
    });

    fs.writeFileSync(entryPath, `${output}\n`);
  }
}

if (process.argv.includes("--write")) {
  generateEntryModules(process.cwd());
}
