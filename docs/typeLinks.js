export const parsePublicTypeAliases = (moduleName, source) =>
  [
    ...source.matchAll(
      /^\s*type\s+([a-zA-Z][a-zA-Z0-9_]*)(?:<[^>\r\n]*>)?\s*=\s*([A-Z][A-Za-z0-9_]*)\.([a-z][A-Za-z0-9_]*)\b/gm,
    ),
  ]
    .map((match) => ({
      moduleName,
      typeName: match[1] ?? "",
      backingModule: match[2] ?? "",
      backingType: match[3] ?? "",
    }))
    .filter(
      ({ typeName, backingModule, backingType }) =>
        typeName !== "" && backingModule !== "" && backingType !== "",
    );

export const createPublicTypeTargets = (aliases) => {
  const owners = new Map();
  for (const alias of aliases) {
    const key = `${alias.backingModule}.${alias.backingType}`;
    const matches = owners.get(key) ?? [];
    owners.set(key, [...matches, { moduleName: alias.moduleName, typeName: alias.typeName }]);
  }
  return new Map(
    [...owners].flatMap(([key, matches]) => (matches.length === 1 ? [[key, matches[0]]] : [])),
  );
};
