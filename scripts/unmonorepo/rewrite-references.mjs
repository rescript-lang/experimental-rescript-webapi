import fs from "node:fs";
import path from "node:path";
import { featureSpecs, publicNameForLeafModule } from "./feature-spec.mjs";

export function rewriteSourceText(source, { currentFeature, specs, localLeaves }) {
  const currentSpec = specs.find((spec) => spec.publicModule === currentFeature);
  let next = source;

  for (const leaf of localLeaves) {
    const publicLeaf = publicNameForLeafModule(leaf, currentSpec.internalPrefix);
    next = next.replaceAll(`${currentSpec.legacyNamespace}.${publicLeaf}`, leaf);
  }

  for (const spec of specs) {
    next = next.replaceAll(`${spec.legacyNamespace}.`, `WebApi.${spec.publicModule}.`);
  }

  return next;
}

export function rewriteTestText(source, specs = featureSpecs) {
  let next = source;

  for (const spec of specs) {
    next = next.replaceAll(`${spec.legacyNamespace}.`, `WebApi.${spec.publicModule}.`);
  }

  return next;
}

function rewriteTestFilesInDirectory(directoryPath) {
  for (const entry of fs.readdirSync(directoryPath, { withFileTypes: true })) {
    const entryPath = path.join(directoryPath, entry.name);

    if (entry.isDirectory()) {
      rewriteTestFilesInDirectory(entryPath);
      continue;
    }

    if (!entry.isFile() || !entry.name.endsWith(".res")) continue;
    fs.writeFileSync(entryPath, rewriteTestText(fs.readFileSync(entryPath, "utf8")));
  }
}

export function rewriteRepoReferences(rootDir) {
  for (const spec of featureSpecs) {
    const featureDir = path.join(rootDir, "src", spec.dirName);
    if (!fs.existsSync(featureDir)) continue;

    const localLeaves = fs
      .readdirSync(featureDir)
      .filter((name) => name.endsWith(".res"))
      .map((name) => path.basename(name, ".res"));

    for (const fileName of fs.readdirSync(featureDir)) {
      if (!fileName.endsWith(".res")) continue;

      const filePath = path.join(featureDir, fileName);
      const source = fs.readFileSync(filePath, "utf8");
      fs.writeFileSync(
        filePath,
        rewriteSourceText(source, {
          currentFeature: spec.publicModule,
          specs: featureSpecs,
          localLeaves,
        }),
      );
    }
  }

  const testsDir = path.join(rootDir, "tests");
  if (fs.existsSync(testsDir)) {
    rewriteTestFilesInDirectory(testsDir);
  }
}

if (process.argv.includes("--write")) {
  rewriteRepoReferences(process.cwd());
}
