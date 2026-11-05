import {
  cpSync,
  existsSync,
  mkdtempSync,
  mkdirSync,
  readFileSync,
  rmSync,
  statSync,
  symlinkSync,
  writeFileSync,
} from "node:fs";
import os from "node:os";
import path from "node:path";
import { spawnSync } from "node:child_process";
import { fileURLToPath } from "node:url";

const scriptPath = fileURLToPath(import.meta.url);
const repoRoot = path.resolve(path.dirname(scriptPath), "..");
const configPath = path.join(repoRoot, "rescript.json");

const expectedFeatureOwners = new Map([
  ["WebAPI.DOM", "DOM"],
  ["WebAPI.Event", "Event"],
  ["WebAPI.DOMPlatform", "DOMPlatform"],
  ["WebAPI.DOMNodes", "DOMNodes"],
  ["WebAPI.File", "File"],
  ["WebAPI.HTML", "HTML"],
  ["WebAPI.Window", "Window"],
  ["WebAPI.CSSOM", "CSSOM"],
  ["WebAPI.CSSFontLoading", "CSSFontLoading"],
  ["WebAPI.Geometry", "Geometry"],
  ["WebAPI.SVG", "SVG"],
  ["WebAPI.Animation", "Animation"],
  ["WebAPI.Device", "Device"],
  ["WebAPI.Navigator", "Navigator"],
  ["WebAPI.Canvas", "Canvas"],
  ["WebAPI.URL", "URL"],
  ["WebAPI.Fetch", "Fetch"],
  ["WebAPI.SafeFetch", "SafeFetch"],
  ["WebAPI.UIEvents", "UIEvents"],
  ["WebAPI.Observers", "Observers"],
  ["WebAPI.Media", "Media"],
  ["WebAPI.WebAudio", "WebAudio"],
  ["WebAPI.Storage", "Storage"],
  ["WebAPI.Messaging", "Messaging"],
  ["WebAPI.Workers", "Workers"],
  ["WebAPI.Crypto", "Crypto"],
  ["WebAPI.Performance", "Performance"],
  ["WebAPI.ViewTransitions", "ViewTransitions"],
]);

const uniqueDuplicates = (values) => [
  ...new Set(values.filter((value, index) => values.indexOf(value) !== index)),
];

const sameMembers = (left, right) =>
  left.length === right.length && left.every((value) => right.includes(value));

const publicModulesFrom = (sourceEntries) =>
  sourceEntries.flatMap((source) =>
    (source.public ?? []).map((moduleName) => ({ moduleName, sourceDir: source.dir })),
  );

const readSource = (filePath) => {
  try {
    return { _tag: "Success", value: readFileSync(filePath, "utf8") };
  } catch (error) {
    return {
      _tag: "Failure",
      message: error instanceof Error ? error.message : String(error),
    };
  }
};

// Only direct `Foo.t = BackingModule.backingType` aliases, with or without type parameters,
// expose an internal type whose editor completion owner needs validation.
export const parsePublicTypeAlias = (source) => {
  const match =
    /^type t(?:<[^>\r\n]+>)?[ \t]*=[ \t]*([A-Z][A-Za-z0-9_]*)\.([A-Za-z][A-Za-z0-9_]*)\b/m.exec(
      source,
    );
  return match === null ? null : { backingModule: match[1], backingType: match[2] };
};

// Public-to-public `Foo.t = Bar.t` re-exports keep Bar as the completion owner. Requiring
// the backing type to point at both public modules would make these valid aliases conflict.
const isPublicToPublicAlias = (alias, publicModuleNames) =>
  alias.backingType === "t" && publicModuleNames.has(alias.backingModule);

const escapeRegExp = (value) => value.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");

// Match the annotation attached to the backing declaration so an unrelated annotation
// elsewhere in the source file cannot satisfy the check.
const completionOwnerFor = (source, backingType) => {
  const escapedType = escapeRegExp(backingType);
  const attributes = String.raw`(?:[ \t]+@[A-Za-z][A-Za-z0-9_.]*(?:\([^\r\n)]*\))?)*`;
  const declaration = String.raw`(?:type(?:[ \t]+rec)?|and)[ \t]+${escapedType}\b`;
  const pattern = new RegExp(
    String.raw`@editor\.completeFrom\(([^)]+)\)${attributes}[ \t]*(?:\r?\n[ \t]*)?${declaration}`,
    "m",
  );
  return pattern.exec(source)?.[1] ?? null;
};

const modulePathFor = (sourceEntries, moduleName) =>
  sourceEntries
    .map((source) => path.join(repoRoot, source.dir, `${moduleName}.res`))
    .find(existsSync);

const readConfig = () => {
  try {
    return { _tag: "Success", value: JSON.parse(readFileSync(configPath, "utf8")) };
  } catch (error) {
    return {
      _tag: "Failure",
      message: error instanceof Error ? error.message : String(error),
    };
  }
};

const validateFeatureNames = (featureEntries) => {
  const actualNames = featureEntries.map(([name]) => name);
  const expectedNames = [...expectedFeatureOwners.keys()];

  return sameMembers(actualNames, expectedNames)
    ? []
    : [
        `Expected exactly these ${expectedNames.length} public features:\n${expectedNames.join("\n")}\n\nReceived:\n${actualNames.join("\n")}`,
      ];
};

const validateSources = (sourceEntries) => {
  const sourceFeatures = sourceEntries.map((source) => source.feature);
  const expectedInternalFeatures = [...expectedFeatureOwners.values()];
  const duplicateFeatures = uniqueDuplicates(sourceFeatures);
  const qualifiedFeatures = sourceFeatures.filter((feature) => feature.startsWith("WebAPI."));
  const missingDirectories = sourceEntries
    .filter((source) => !existsSync(path.join(repoRoot, source.dir)))
    .map((source) => source.dir);

  return [
    ...(sameMembers(sourceFeatures, expectedInternalFeatures)
      ? []
      : [
          `Source features do not match the ${expectedInternalFeatures.length} expected internal folder features.`,
        ]),
    ...(duplicateFeatures.length === 0
      ? []
      : [`Duplicate source features: ${duplicateFeatures.join(", ")}`]),
    ...(qualifiedFeatures.length === 0
      ? []
      : [`Source features must be unqualified: ${qualifiedFeatures.join(", ")}`]),
    ...(missingDirectories.length === 0
      ? []
      : [`Missing source directories: ${missingDirectories.join(", ")}`]),
  ];
};

const validateFeatureOwners = (featureEntries, sourceEntries) => {
  const internalFeatures = new Set(sourceEntries.map((source) => source.feature));

  return featureEntries.flatMap(([featureName, expansion]) => {
    if (!Array.isArray(expansion)) {
      return [`${featureName} must expand to an array.`];
    }

    const directInternalFeatures = expansion.filter((feature) => internalFeatures.has(feature));
    const expectedOwner = expectedFeatureOwners.get(featureName);

    return directInternalFeatures.length === 1 && directInternalFeatures[0] === expectedOwner
      ? []
      : [
          `${featureName} must directly include only its owning internal feature ${expectedOwner}; received ${directInternalFeatures.join(", ") || "none"}.`,
        ];
  });
};

const validatePublicModules = (sourceEntries) => {
  const publicModules = publicModulesFrom(sourceEntries);
  const duplicateModules = uniqueDuplicates(publicModules.map(({ moduleName }) => moduleName));
  const missingModules = publicModules
    .filter(
      ({ moduleName, sourceDir }) =>
        !existsSync(path.join(repoRoot, sourceDir, `${moduleName}.res`)),
    )
    .map(({ moduleName, sourceDir }) => `${sourceDir}/${moduleName}.res`);

  return [
    ...(duplicateModules.length === 0
      ? []
      : [`Duplicate public modules: ${duplicateModules.join(", ")}`]),
    ...(missingModules.length === 0
      ? []
      : [`Missing public module files: ${missingModules.join(", ")}`]),
  ];
};

// Internal backing types must complete from their public module. This keeps editor suggestions
// on `Foo` instead of leaking implementation modules such as DOMTree or *Types modules.
const validateCompletionAlias = (publicModule, sourceEntries, publicModuleNames) => {
  const publicPath = path.join(repoRoot, publicModule.sourceDir, `${publicModule.moduleName}.res`);
  const publicSource = readSource(publicPath);
  if (publicSource._tag === "Failure") {
    return [`Unable to read ${publicPath}: ${publicSource.message}`];
  }

  const alias = parsePublicTypeAlias(publicSource.value);
  if (alias === null || isPublicToPublicAlias(alias, publicModuleNames)) {
    return [];
  }

  const backingPath = modulePathFor(sourceEntries, alias.backingModule);
  if (backingPath === undefined) {
    return [
      `Unable to resolve backing module ${alias.backingModule} for ${publicModule.moduleName}.t.`,
    ];
  }

  const backingSource = readSource(backingPath);
  if (backingSource._tag === "Failure") {
    return [`Unable to read ${backingPath}: ${backingSource.message}`];
  }

  const actualOwner = completionOwnerFor(backingSource.value, alias.backingType);
  return actualOwner === publicModule.moduleName
    ? []
    : [
        `${alias.backingModule}.${alias.backingType}, aliased by ${publicModule.moduleName}.t, must use @editor.completeFrom(${publicModule.moduleName}); received ${actualOwner ?? "no annotation"}.`,
      ];
};

const validateCompletionAliases = (sourceEntries) => {
  const publicModules = publicModulesFrom(sourceEntries);
  const publicModuleNames = new Set(publicModules.map(({ moduleName }) => moduleName));
  return publicModules.flatMap((publicModule) =>
    validateCompletionAlias(publicModule, sourceEntries, publicModuleNames),
  );
};

const validateConfig = (config) => {
  const featureEntries = Object.entries(config.features ?? {});
  const sourceEntries = (config.sources ?? []).filter(
    (source) => source !== null && typeof source === "object" && typeof source.feature === "string",
  );

  return [
    ...validateFeatureNames(featureEntries),
    ...validateSources(sourceEntries),
    ...validateFeatureOwners(featureEntries, sourceEntries),
    ...validatePublicModules(sourceEntries),
    ...validateCompletionAliases(sourceEntries),
  ];
};

const rescriptCliPath = path.join(repoRoot, "node_modules", "rescript", "cli", "rescript.js");

const runRescript = (args) =>
  spawnSync(process.execPath, [rescriptCliPath, ...args], {
    cwd: repoRoot,
    encoding: "utf8",
  });

const prepareConsumer = (directory, features, fixture) => {
  const packageDirectory = path.join(directory, "node_modules", "@rescript", "webapi");
  mkdirSync(packageDirectory, { recursive: true });
  cpSync(path.join(repoRoot, "src"), path.join(packageDirectory, "src"), {
    recursive: true,
    filter: (source) => statSync(source).isDirectory() || /\.resi?$/.test(source),
  });
  for (const file of ["package.json", "rescript.json"]) {
    cpSync(path.join(repoRoot, file), path.join(packageDirectory, file));
  }
  for (const dependency of ["rescript", "@rescript/runtime"]) {
    symlinkSync(
      path.join(repoRoot, "node_modules", dependency),
      path.join(directory, "node_modules", dependency),
      "junction",
    );
  }
  mkdirSync(path.join(directory, "src"));
  cpSync(path.join(path.dirname(scriptPath), fixture), path.join(directory, "src", "Consumer.res"));
  writeFileSync(
    path.join(directory, "rescript.json"),
    JSON.stringify({
      name: "safe-fetch-consumer-check",
      sources: [{ dir: "src" }],
      dependencies: [{ name: "@rescript/webapi", features }],
      "experimental-features": { LetUnwrap: true },
      warnings: { error: "+8" },
      "package-specs": { module: "esmodule", "in-source": true },
    }),
  );
};

export const isMissingSafeFetchDiagnostic = (output) =>
  /The module or file (?:WebAPI\.)?SafeFetch can't be found\./.test(output.replace(/\s+/g, " "));

const runConsumerCheck = ({ name, features, fixture, shouldCompile }) => {
  const directory = mkdtempSync(path.join(os.tmpdir(), "webapi-feature-consumer-"));
  try {
    prepareConsumer(directory, features, fixture);
    const result = spawnSync(process.execPath, [rescriptCliPath, "build", "--prod"], {
      cwd: directory,
      encoding: "utf8",
    });
    const output = `${result.stdout ?? ""}\n${result.stderr ?? ""}`;
    const passed = shouldCompile
      ? result.status === 0
      : result.status !== null && result.status !== 0 && isMissingSafeFetchDiagnostic(output);
    return passed
      ? { _tag: "Success" }
      : {
          _tag: "Failure",
          message: `${name} did not ${shouldCompile ? "compile" : "reject the unavailable SafeFetch module"}.\n${result.error?.message ?? ""}\n${output.trim()}`,
        };
  } finally {
    rmSync(directory, { recursive: true, force: true });
  }
};

const formatProcessFailure = (featureName, command, result) =>
  [`${featureName} failed during ${command}.`, result.stdout?.trim(), result.stderr?.trim()]
    .filter(Boolean)
    .join("\n");

const compileFeature = (featureName) => {
  const cleanResult = runRescript(["clean"]);
  if (cleanResult.status !== 0) {
    return { _tag: "Failure", message: formatProcessFailure(featureName, "clean", cleanResult) };
  }

  const buildResult = runRescript(["build", "--prod", "--features", featureName]);
  return buildResult.status === 0
    ? { _tag: "Success" }
    : { _tag: "Failure", message: formatProcessFailure(featureName, "build", buildResult) };
};

if (process.argv[1] !== undefined && path.resolve(process.argv[1]) === scriptPath) {
  const configResult = readConfig();
  if (configResult._tag === "Failure") {
    console.error(`Unable to read rescript.json: ${configResult.message}`);
    process.exit(1);
  }

  const validationErrors = validateConfig(configResult.value);
  if (validationErrors.length > 0) {
    console.error(validationErrors.join("\n\n"));
    process.exit(1);
  }

  console.log(`Validated ${expectedFeatureOwners.size} public feature definitions.`);

  for (const featureName of expectedFeatureOwners.keys()) {
    const result = compileFeature(featureName);
    if (result._tag === "Failure") {
      console.error(result.message);
      process.exit(1);
    }
    console.log(`[ok] ${featureName}`);
  }

  for (const consumer of [
    {
      name: "SafeFetch consumer",
      features: ["WebAPI.SafeFetch"],
      fixture: "consumer-safe-fetch.res",
      shouldCompile: true,
    },
    {
      name: "Raw Fetch consumer",
      features: ["WebAPI.Fetch"],
      fixture: "consumer-fetch.res",
      shouldCompile: true,
    },
    {
      name: "Fetch-only consumer rejection",
      features: ["WebAPI.Fetch"],
      fixture: "consumer-safe-fetch-disabled.res",
      shouldCompile: false,
    },
  ]) {
    const result = runConsumerCheck(consumer);
    if (result._tag === "Failure") {
      console.error(result.message);
      process.exit(1);
    }
    console.log(`[ok] ${consumer.name}`);
  }
}
