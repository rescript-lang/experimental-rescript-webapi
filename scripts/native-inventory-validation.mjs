const expectedInventory = {
  revision: "4888db2cc601ad568b76af6ed2add60da0ad96cb",
  status: "partial",
  publicModuleCount: 291,
  sourceFeatureGroupCount: 28,
  convertedCount: 39,
  names: [
    "Response",
    "Request",
    "HTMLCanvasElement",
    "CSSStyleValue",
    "AnimationEffect",
    "XPathExpression",
    "Headers",
    "FormData",
    "ReadableStream",
    "WritableStream",
    "WritableStreamDefaultController",
    "FileSystemWritableFileStream",
    "URL",
    "Crypto",
    "SubtleCrypto",
    "CryptoKey",
    "DOMException",
    "DOMStringList",
    "DOMTokenList",
    "DOMStringMap",
    "Cache",
    "CacheStorage",
    "IDBFactory",
    "StorageManager",
    "NavigationPreloadManager",
    "PushEvent",
    "Document",
    "Window",
    "CustomElementRegistry",
    "AbortController",
    "Blob",
    "File",
    "FileList",
    "FileSystemEntry",
    "FileSystemDirectoryEntry",
    "FileSystemDirectoryReader",
    "FileSystemHandle",
    "FileSystemDirectoryHandle",
    "FileSystemFileHandle",
  ],
};

const escaped = (value) => value.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");

export const stripComments = (text) =>
  text
    .replace(/\/\*[\s\S]*?\*\//g, (comment) => comment.replace(/[^\r\n]/g, " "))
    .replace(/\/\/[^\r\n]*/g, "");

export const hasAbstractDeclaration = (source, typeName) => {
  const code = stripComments(source);
  const declaration = new RegExp(
    `^[ \\t]*(?:@[A-Za-z][A-Za-z0-9_.]*(?:\\([^\\r\\n]*\\))?[ \\t]+)?(?:type(?:[ \\t]+rec)?|and)[ \\t]+${escaped(typeName)}(?:<[^>]+>)?[ \\t]*(?:\\r?\\n|$)`,
    "gm",
  );
  const matches = [...code.matchAll(declaration)];
  if (matches.length !== 1) return false;

  const rest = code.slice(matches[0].index + matches[0][0].length).trimStart();
  return !/^(?:=|\{|\|)/.test(rest);
};

export const hasExactAlias = (source, alias) => {
  const match =
    /^type ([A-Za-z][A-Za-z0-9_]*(?:<[^>]+>)?) = ([A-Za-z][A-Za-z0-9_.]*(?:<[^>]+>)?)$/.exec(alias);
  if (match === null) {
    const abstractType = /^type ([A-Za-z][A-Za-z0-9_]*)$/.exec(alias);
    return abstractType !== null && hasAbstractDeclaration(source, abstractType[1]);
  }

  const [, typeName, target] = match;
  const declaration = new RegExp(
    `^[ \\t]*type[ \\t]+${escaped(typeName)}[ \\t]*=[ \\t]*${escaped(target)}[ \\t]*\\r?$`,
    "m",
  );
  return declaration.test(stripComments(source));
};

const hasNativeAccessor = (source, { name, kind, property }) => {
  const lines = stripComments(source).split(/\r?\n/);
  const declarationPattern = new RegExp(
    `^[ \\t]*(?:.*[ \\t])?external[ \\t]+${escaped(name)}[ \\t]*:`,
  );

  for (const [index, line] of lines.entries()) {
    if (!declarationPattern.test(line)) continue;

    const previousNonemptyLine = lines
      .slice(0, index)
      .reverse()
      .find((candidate) => candidate.trim().length > 0);
    const annotationSource = [previousNonemptyLine, line].filter(Boolean).join("\n");
    return (
      annotationSource.includes(`@${kind}`) &&
      new RegExp(`=[ \\t]*"${escaped(property)}"`).test(line)
    );
  }
  return false;
};

const hasAliasAccessor = (publicSource, backingSource, accessor) => {
  const alias = new RegExp(
    `^[ \\t]*let[ \\t]+${escaped(accessor.name)}[ \\t]*=[ \\t]*WebCryptoTypes\\.${escaped(accessor.backingAccessor)}[ \\t]*$`,
    "m",
  );
  return (
    alias.test(stripComments(publicSource)) &&
    hasNativeAccessor(backingSource, {
      name: accessor.backingAccessor,
      kind: "get",
      property: accessor.property,
    })
  );
};

export const validateInventoryMetadata = (inventory) => {
  const names = inventory.convertedNativeInstances.map(({ name }) => name);
  return [
    ...(inventory.revision === expectedInventory.revision ? [] : ["Inventory revision changed."]),
    ...(inventory.status === expectedInventory.status
      ? []
      : ["Inventory must remain explicitly partial."]),
    ...(inventory.publicModuleCount === expectedInventory.publicModuleCount
      ? []
      : [`Expected ${expectedInventory.publicModuleCount} public modules.`]),
    ...(inventory.sourceFeatureGroupCount === expectedInventory.sourceFeatureGroupCount
      ? []
      : [`Expected ${expectedInventory.sourceFeatureGroupCount} source groups.`]),
    ...(inventory.expectedConvertedNativeInstanceCount === expectedInventory.convertedCount &&
    names.length === expectedInventory.convertedCount
      ? []
      : [`Expected exactly ${expectedInventory.convertedCount} converted native identities.`]),
    ...(new Set(names).size === names.length ? [] : ["Inventory contains duplicate names."]),
    ...expectedInventory.names
      .filter((name) => !names.includes(name))
      .map((name) => `Inventory is missing converted native identity ${name}.`),
    ...(inventory.constructibleDataExceptions?.length > 0
      ? []
      : ["Inventory must record constructible data exceptions."]),
    ...(inventory.dataResultUnionModels?.length > 0
      ? []
      : ["Inventory must record result unions that need a separate opaque model."]),
    ...(inventory.unresolvedUnknownBackedHandles?.length > 0
      ? []
      : ["Inventory must record unresolved unknown-backed handles."]),
    ...(inventory.knownUncheckedPublicGenericImplConversions?.length > 0
      ? []
      : [
          "Inventory must record unchecked public generic conversions while the migration is partial.",
        ]),
    ...(inventory.unconvertedNativeGroups?.length > 0
      ? []
      : ["Inventory must record unconverted native groups."]),
  ];
};

export const validateEntry = (entry, { backingSource, publicSource }) => [
  ...(!hasAbstractDeclaration(backingSource, entry.backingType)
    ? [`${entry.name} backing type ${entry.backingType} must remain abstract.`]
    : []),
  ...(!hasExactAlias(publicSource, entry.publicAlias)
    ? [`${entry.name} must retain exact alias ${entry.publicAlias}.`]
    : []),
  ...entry.accessors.flatMap((accessor) => {
    const exists =
      accessor.kind === "alias"
        ? hasAliasAccessor(publicSource, backingSource, accessor)
        : hasNativeAccessor(publicSource, accessor);
    return exists
      ? []
      : [`${entry.name} accessor ${accessor.name} is missing or has the wrong property binding.`];
  }),
];
