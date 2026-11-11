import { readFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";
import { validateEntry, validateInventoryMetadata } from "./native-inventory-validation.mjs";

const scriptPath = fileURLToPath(import.meta.url);
const repoRoot = path.resolve(path.dirname(scriptPath), "..");
const inventory = JSON.parse(
  readFileSync(path.join(path.dirname(scriptPath), "native-instance-inventory.json"), "utf8"),
);

const source = (relativePath) => readFileSync(path.join(repoRoot, relativePath), "utf8");

const errors = [
  ...validateInventoryMetadata(inventory),
  ...inventory.convertedNativeInstances.flatMap((entry) =>
    validateEntry(entry, {
      backingSource: source(entry.backingFile),
      publicSource: source(entry.publicFile),
    }),
  ),
];

if (errors.length > 0) {
  console.error(errors.join("\n"));
  process.exitCode = 1;
} else {
  console.log(
    `Validated ${inventory.convertedNativeInstances.length} abstract native identities from the partial inventory.`,
  );
}
