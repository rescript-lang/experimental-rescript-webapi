import { readFileSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const scriptPath = fileURLToPath(import.meta.url);
const repoRoot = path.resolve(path.dirname(scriptPath), "..");
const inventory = JSON.parse(
  readFileSync(path.join(path.dirname(scriptPath), "native-instance-inventory.json"), "utf8"),
);

const source = (relativePath) => readFileSync(path.join(repoRoot, relativePath), "utf8");
const escaped = (value) => value.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");

const abstractDeclaration = (text, typeName) => {
  const match = new RegExp(`^type ${escaped(typeName)}(?:<[^>]+>)?(?:[ \\t]*\\r?$)`, "m").exec(
    text,
  );
  return match !== null;
};

const errors = inventory.convertedNativeInstances.flatMap((entry) => {
  const backingSource = source(entry.backingFile);
  const publicSource = source(entry.publicFile);
  const aliasExists = publicSource.includes(entry.publicAlias);
  const missingAccessors = entry.accessors.filter(
    (accessor) => !new RegExp(`\\b${escaped(accessor)}\\b`).test(publicSource),
  );

  return [
    ...(!abstractDeclaration(backingSource, entry.backingType)
      ? [`${entry.name} backing ${entry.backingFile} must remain an abstract type.`]
      : []),
    ...(!aliasExists ? [`${entry.name} must retain alias ${entry.publicAlias}.`] : []),
    ...missingAccessors.map((accessor) => `${entry.name} is missing accessor ${accessor}.`),
  ];
});

if (errors.length > 0) {
  console.error(errors.join("\n"));
  process.exitCode = 1;
} else {
  console.log(
    `Validated ${inventory.convertedNativeInstances.length} abstract native identities from the partial inventory.`,
  );
}
