const stripReScriptComments = (source) => {
  const output = [];
  let index = 0;
  let quote = "";
  let commentDepth = 0;

  while (index < source.length) {
    if (commentDepth > 0) {
      if (source.startsWith("/*", index)) {
        commentDepth += 1;
        output.push("  ");
        index += 2;
      } else if (source.startsWith("*/", index)) {
        commentDepth -= 1;
        output.push("  ");
        index += 2;
      } else {
        output.push(source[index] === "\n" ? "\n" : " ");
        index += 1;
      }
    } else if (quote !== "") {
      const character = source[index] ?? "";
      output.push(character === "\n" ? "\n" : " ");
      if (character === "\\" && index + 1 < source.length) {
        output.push(source[index + 1] === "\n" ? "\n" : " ");
        index += 2;
      } else {
        if (character === quote) quote = "";
        index += 1;
      }
    } else if (source[index] === '"' || source[index] === "`") {
      quote = source[index] ?? "";
      output.push(quote);
      index += 1;
    } else if (source.startsWith("//", index)) {
      while (index < source.length && source[index] !== "\n") index += 1;
    } else if (source.startsWith("/*", index)) {
      commentDepth = 1;
      output.push("  ");
      index += 2;
    } else {
      output.push(source[index] ?? "");
      index += 1;
    }
  }
  return output.join("");
};

const maskNestedDeclarations = (source) => {
  const depth = { value: 0 };
  let quote = "";
  return source
    .split("\n")
    .map((line) => {
      const result = depth.value === 0 ? line : "";
      for (let index = 0; index < line.length; index += 1) {
        const character = line[index] ?? "";
        if (quote !== "") {
          if (character === "\\") index += 1;
          else if (character === quote) quote = "";
        } else if (character === '"' || character === "`") {
          quote = character;
        } else if (character === "{") {
          depth.value += 1;
        } else if (character === "}") {
          depth.value = Math.max(0, depth.value - 1);
        }
      }
      return result;
    })
    .join("\n");
};

export const parsePublicTypeAliases = (moduleName, source) =>
  [
    ...maskNestedDeclarations(stripReScriptComments(source)).matchAll(
      /^type[ \t]+([a-zA-Z][a-zA-Z0-9_]*)(?:<[^>\r\n]*>)?[ \t]*=[ \t]*([A-Z][A-Za-z0-9_]*)\.([a-z][A-Za-z0-9_]*)\b/gm,
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
