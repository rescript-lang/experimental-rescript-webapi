import { createHash } from "node:crypto";
import { readFileSync, readdirSync } from "node:fs";
import path from "node:path";
import { fileURLToPath } from "node:url";

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), "..");
const inventoryPath = path.join(root, "scripts/native-instance-inventory.json");
const inventory = JSON.parse(readFileSync(inventoryPath, "utf8"));
const config = JSON.parse(readFileSync(path.join(root, "rescript.json"), "utf8"));
const failures = [];

const stripComments = (source) =>
  source
    .replace(/\/\*[\s\S]*?\*\//g, (comment) => "\n".repeat(comment.split("\n").length - 1))
    .replace(/\/\/[^\n]*/g, "");

const sourceFiles = (directory) =>
  readdirSync(directory, { withFileTypes: true }).flatMap((entry) => {
    const entryPath = path.join(directory, entry.name);
    return entry.isDirectory()
      ? sourceFiles(entryPath)
      : entry.isFile() && entry.name.endsWith(".res")
        ? [entryPath]
        : [];
  });

const sourcePaths = sourceFiles(path.join(root, "src"));
const publicModules = config.sources.flatMap((source) => source.public ?? []);
const manifestFingerprint = createHash("sha256")
  .update(
    config.sources
      .flatMap((source) => (source.public ?? []).map((module) => `${source.dir}/${module}`))
      .sort()
      .join("\n"),
  )
  .digest("hex");
const declarationPattern =
  /^(?:@[A-Za-z0-9_.]+(?:\([^\n]*?\))?\s+)*(?:type|and)\s+(?:rec\s+)?[A-Za-z_]\w*(?:<[^>\n]*>)?\s*=/gm;
const declarationNames = [];
const declarationCount = sourcePaths.reduce((count, filePath) => {
  const source = stripComments(readFileSync(filePath, "utf8"));
  const matches = [...source.matchAll(declarationPattern)];
  for (const match of matches) {
    const name = match[0].match(/\b(?:type|and)\s+(?:rec\s+)?([A-Za-z_]\w*)/)?.[1];
    if (name !== undefined) {
      declarationNames.push(`${path.relative(root, filePath)}:${name}`);
    }
  }
  return count + matches.length;
}, 0);
const declarationFingerprint = createHash("sha256")
  .update(declarationNames.sort().join("\n"))
  .digest("hex");

if (publicModules.length !== inventory.publicModules.expectedCount) {
  failures.push(
    `Expected ${inventory.publicModules.expectedCount} public modules, found ${publicModules.length}. Update the native-instance inventory for added or removed modules.`,
  );
}

if (manifestFingerprint !== inventory.publicModules.manifestSha256) {
  failures.push(
    "The public module manifest changed. Review added or removed public type routes and update the native-instance inventory.",
  );
}

if (declarationCount !== inventory.sourceTypeDeclarationCount) {
  failures.push(
    `Expected ${inventory.sourceTypeDeclarationCount} source type declarations, found ${declarationCount}. Review and update the native-instance inventory for added or removed types.`,
  );
}

if (declarationFingerprint !== inventory.sourceTypeDeclarationSha256) {
  failures.push(
    "The source type declaration inventory changed. Review every added, removed, or renamed type and update native/data classifications.",
  );
}

const declarationIsPrivate = (file, name) => {
  const filePath = path.join(root, file);
  if (!filePath.startsWith(`${path.join(root, "src")}${path.sep}`)) {
    failures.push(`Inventory path is outside src/: ${file}`);
    return false;
  }
  let source;
  try {
    source = stripComments(readFileSync(filePath, "utf8"));
  } catch {
    failures.push(`Inventory source file does not exist: ${file}`);
    return false;
  }

  const escapedName = name.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
  const pattern = new RegExp(
    `^(?:@[A-Za-z0-9_.]+(?:\\([^\\n]*?\\))?\\s+)*(?:type|and)\\s+(?:rec\\s+)?${escapedName}(?:<[^>\\n]*>)?\\s*=`,
    "gm",
  );
  const matches = [...source.matchAll(pattern)];
  if (matches.length !== 1) {
    failures.push(`${file} must declare ${name} exactly once; found ${matches.length}.`);
    return false;
  }

  const declaration = source.slice(matches[0].index + matches[0][0].length);
  const nextDeclaration = declaration.search(
    /^(?:@[A-Za-z0-9_.]+(?:\([^\n]*?\))?\s+)*(?:type|and|let|external|module|include)\b/m,
  );
  const headerText =
    nextDeclaration === -1 ? declaration.slice(0, 1024) : declaration.slice(0, nextDeclaration);
  const firstRecord = headerText.indexOf("{");
  const header = firstRecord === -1 ? headerText : headerText.slice(0, firstRecord);
  return /\bprivate\b/.test(header);
};

const declarationIsConstructible = (file, name) => {
  const filePath = path.join(root, file);
  if (!filePath.startsWith(`${path.join(root, "src")}${path.sep}`)) {
    failures.push(`Inventory path is outside src/: ${file}`);
    return false;
  }
  let source;
  try {
    source = stripComments(readFileSync(filePath, "utf8"));
  } catch {
    failures.push(`Inventory source file does not exist: ${file}`);
    return false;
  }

  const escapedName = name.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
  const pattern = new RegExp(
    `^\\s*(?:@[A-Za-z0-9_.]+(?:\\([^\\n]*?\\))?\\s+)*(?:type|and)\\s+(?:rec\\s+)?${escapedName}(?:<[^>\\n]*>)?\\s*=`,
    "gm",
  );
  const matches = [...source.matchAll(pattern)];
  if (matches.length !== 1) {
    failures.push(
      `${file} must declare constructible exception ${name} exactly once; found ${matches.length}.`,
    );
    return false;
  }

  const declaration = source.slice(matches[0].index + matches[0][0].length);
  const nextDeclaration = declaration.search(
    /^(?:@[A-Za-z0-9_.]+(?:\([^\n]*?\))?\s+)*(?:type|and|let|external|module|include)\b/m,
  );
  const headerText =
    nextDeclaration === -1 ? declaration.slice(0, 1024) : declaration.slice(0, nextDeclaration);
  const firstRecord = headerText.indexOf("{");
  const header = firstRecord === -1 ? headerText : headerText.slice(0, firstRecord);
  if (/\bprivate\b/.test(header)) {
    failures.push(`Constructible exception ${file}:${name} must remain public.`);
    return false;
  }
  return true;
};

const verifyModuleAliases = (aliasInventory, label) => {
  for (const [file, aliases] of Object.entries(aliasInventory)) {
    const filePath = path.join(root, file);
    let source;
    try {
      source = stripComments(readFileSync(filePath, "utf8"));
    } catch {
      failures.push(`${label} owner file does not exist: ${file}`);
      continue;
    }
    for (const [alias, target] of Object.entries(aliases)) {
      const pattern = new RegExp(`\\bmodule\\s+${alias}\\s*=\\s*${target}\\b`);
      if (!pattern.test(source)) {
        failures.push(`${label} route ${file}:${alias} -> ${target} is missing.`);
      }
    }
  }
};

const verifyPublicInstanceTypes = () => {
  for (const source of config.sources) {
    for (const module of source.public ?? []) {
      const file = path.join(source.dir, `${module}.res`);
      let contents;
      try {
        contents = stripComments(readFileSync(path.join(root, file), "utf8"));
      } catch {
        failures.push(`Public module source file does not exist: ${file}`);
        continue;
      }
      const pattern =
        /^(?:@[A-Za-z0-9_.]+(?:\([^\n]*?\))?\s+)*(?:type|and)\s+(?:rec\s+)?t(?:<[^>\n]*>)?\s*=/gm;
      const matches = [...contents.matchAll(pattern)];
      if (matches.length === 0) continue;
      if (matches.length !== 1) {
        failures.push(
          `Public module ${file} declares t ${matches.length} times; review its native type views.`,
        );
        continue;
      }
      const declaration = contents.slice(matches[0].index + matches[0][0].length);
      const nextDeclaration = declaration.search(
        /^(?:@[A-Za-z0-9_.]+(?:\([^\n]*?\))?\s+)*(?:type|and|let|external|module|include)\b/m,
      );
      const headerText =
        nextDeclaration === -1 ? declaration.slice(0, 1024) : declaration.slice(0, nextDeclaration);
      const firstRecord = headerText.indexOf("{");
      if (firstRecord === -1) continue;
      const header = headerText.slice(0, firstRecord);
      if (!/\bprivate\b/.test(header)) {
        failures.push(`Public module ${file} exposes a constructible record t.`);
      }
    }
  }
};

const setterNames = (file) => {
  const source = stripComments(readFileSync(path.join(root, file), "utf8"));
  return new Set(
    [...source.matchAll(/@set[\s\S]{0,160}?external\s+(set[A-Za-z0-9_]*)\b/g)].map(
      (match) => match[1],
    ),
  );
};

const methodNameForField = (field) => {
  const fieldAliases = {
    as_: "setAs",
    open_: "setOpen",
    type_: "setType",
  };
  return fieldAliases[field] ?? `set${field[0].toUpperCase()}${field.slice(1)}`;
};

const verifySetterNames = (file, fields, overrides = {}) => {
  const available = setterNames(file);
  for (const field of fields) {
    const methodName = overrides[field] ?? methodNameForField(field);
    if (!available.has(methodName)) {
      failures.push(`Expected typed native setter ${file}:${methodName} for ${field}.`);
    }
  }
};

for (const [file, fields] of Object.entries(
  inventory.writablePropertyInventory.sharedImplementations,
)) {
  verifySetterNames(file, fields);
}

for (const [module, fields] of Object.entries(inventory.writablePropertyInventory.htmlLocal)) {
  verifySetterNames(`src/html/${module}.res`, fields);
}

verifySetterNames(
  "src/url/URL.res",
  inventory.writablePropertyInventory.url["src/url/UrlTypes.res"],
);
verifySetterNames(
  "src/window/Location.res",
  inventory.writablePropertyInventory.location["src/window/Location.res"],
);
verifySetterNames(
  "src/window/History.res",
  inventory.writablePropertyInventory.history["src/window/HistoryTypes.res"],
);
verifySetterNames(
  "src/animation/Animation.res",
  inventory.writablePropertyInventory.animation["Animation.t"],
);
verifySetterNames("src/cssom/MediaList.res", ["mediaText"]);
verifySetterNames("src/cssom/StyleSheet.res", ["disabled"]);
verifySetterNames("src/cssom/StyleSheet.res", ["disabled"], {
  disabled: "setCSSStyleSheetDisabled",
});
verifySetterNames("src/cssom/StyleSheet.res", ["cssText"], {
  cssText: "setCSSRuleCssText",
});
verifySetterNames(
  "src/css-font-loading/FontFace.res",
  inventory.writablePropertyInventory.cssAndFonts["CssFontLoadingTypes.fontFace"],
);
verifySetterNames("src/svg/SVGElement.res", ["baseVal"], {
  baseVal: "setAnimatedStringBaseVal",
});
verifySetterNames("src/svg/SVGElement.res", ["nonce", "autofocus", "tabIndex"]);
verifySetterNames("src/canvas/HTMLCanvasElement.res", ["width", "height"]);
verifySetterNames("src/canvas/OffscreenCanvas.res", ["width", "height"]);
verifySetterNames(
  "src/canvas/OffscreenCanvasRenderingContext2D.res",
  inventory.writablePropertyInventory.svgAndCanvas["CanvasTypes.offscreenCanvasRenderingContext2D"],
);
verifySetterNames(
  "src/canvas/WebGLRenderingContext.res",
  ["drawingBufferColorSpace", "unpackColorSpace"],
  {
    drawingBufferColorSpace: "setDrawingBufferColorSpace",
    unpackColorSpace: "setUnpackColorSpace",
  },
);
verifySetterNames(
  "src/canvas/WebGL2RenderingContext.res",
  ["drawingBufferColorSpace", "unpackColorSpace"],
  {
    drawingBufferColorSpace: "setDrawingBufferColorSpace",
    unpackColorSpace: "setUnpackColorSpace",
  },
);
verifySetterNames(
  "src/web-audio/AudioNode.res",
  inventory.writablePropertyInventory.webAudioBase["AudioNode.Impl"],
);

const audioSetterModules = {
  audioParam: "AudioParam",
  biquadFilterNode: "BiquadFilterNode",
  audioBufferSourceNode: "AudioBufferSourceNode",
  convolverNode: "ConvolverNode",
  oscillatorNode: "OscillatorNode",
  pannerNode: "PannerNode",
  analyserNode: "AnalyserNode",
  waveShaperNode: "WaveShaperNode",
};
for (const [nativeType, fields] of Object.entries(inventory.writablePropertyInventory.audioLocal)) {
  const file = `src/web-audio/${audioSetterModules[nativeType]}.res`;
  if (file.endsWith("undefined.res")) {
    failures.push(`No setter owner is configured for Web Audio type ${nativeType}.`);
  } else {
    verifySetterNames(file, fields);
  }
}

verifySetterNames(
  "src/media/DomHTMLMediaElement.res",
  inventory.writablePropertyInventory.mediaElementBase,
);
const mediaSetterModules = {
  HTMLVideoElement: "HTMLVideoElement",
  HTMLTrackElement: "HTMLTrackElement",
  MediaStreamTrack: "MediaCaptureAndStreamsTypes",
  MediaMetadata: "MediaSessionTypes",
  MediaSession: "MediaSessionTypes",
  TextTrackCue: "WebVttTypes",
  TextTrack: "WebVttTypes",
  SpeechSynthesisUtterance: "WebSpeechTypes",
};
for (const [nativeType, fields] of Object.entries(inventory.writablePropertyInventory.mediaLocal)) {
  const file = `src/media/${mediaSetterModules[nativeType]}.res`;
  const overrides =
    nativeType === "TextTrackCue"
      ? {
          id: "setCueId",
          startTime: "setCueStartTime",
          endTime: "setCueEndTime",
          pauseOnExit: "setCuePauseOnExit",
        }
      : nativeType === "TextTrack"
        ? { mode: "setTextTrackMode" }
        : {};
  verifySetterNames(file, fields, overrides);
}

verifySetterNames("src/ui-events/DataTransfer.res", ["dropEffect", "effectAllowed"]);
verifySetterNames("src/storage/IDBObjectStore.res", ["name"]);
verifySetterNames("src/storage/IDBIndex.res", ["name"]);
verifySetterNames("src/messaging/WebSocket.res", ["binaryType"]);

verifyModuleAliases(inventory.publicTypesModuleAliases, "Public Types alias");
verifyModuleAliases(inventory.publicModuleAliases, "Public module alias");
verifyPublicInstanceTypes();

for (const [file, policy] of Object.entries(inventory.largeUniformWritableFamilies)) {
  const source = readFileSync(path.join(root, file), "utf8");
  const propertyCount = [...source.matchAll(/^\s*mutable\s+[A-Za-z_]\w*\s*:\s*string\b/gm)].length;
  if (propertyCount !== policy.nativeMutableStringFieldCount) {
    failures.push(
      `${file} has ${propertyCount} mutable string fields; inventory expects ${policy.nativeMutableStringFieldCount}.`,
    );
  }
  if (!/\bexternal\s+setProperty\b/.test(source) || !/\bexternal\s+setCssText\b/.test(source)) {
    failures.push(`${file} must keep its setProperty and setCssText write paths.`);
  }
}

for (const [file, names] of Object.entries(inventory.nativeBackings)) {
  for (const name of names) {
    if (!declarationIsPrivate(file, name)) {
      failures.push(`Native backing ${file}:${name} must be private.`);
    }
  }
}

for (const [file, names] of Object.entries(inventory.publicRecordViews)) {
  for (const name of names) {
    if (!declarationIsPrivate(file, name)) {
      failures.push(`Public native view ${file}:${name} must preserve privacy.`);
    }
  }
}

for (const [file, names] of Object.entries(inventory.constructibleRecordExceptions)) {
  for (const name of names) {
    declarationIsConstructible(file, name);
  }
}

if (failures.length > 0) {
  console.error(failures.map((failure) => `- ${failure}`).join("\n"));
  process.exitCode = 1;
} else {
  const protectedCount = Object.values(inventory.nativeBackings).flat().length;
  const viewCount = Object.values(inventory.publicRecordViews).flat().length;
  const exceptionCount = Object.values(inventory.constructibleRecordExceptions).flat().length;
  console.log(
    `Verified ${publicModules.length} public modules, ${declarationCount} inventoried type declarations, ${protectedCount} private native backings, ${viewCount} private public views, and ${exceptionCount} constructible record exceptions.`,
  );
  console.log(
    `Explicit unprotected unknown-backed native handles: ${inventory.unknownBackedDispositions.notProtectedNativeHandles.join(", ")}.`,
  );
  console.log(`Abstract native types retained: ${inventory.abstractNativeTypes.join(", ")}.`);
  console.log(
    `Unmodeled input/mixed unknown placeholders: ${inventory.unknownBackedDispositions.unmodeledInputOrMixedPlaceholders.join(", ")}.`,
  );
}
