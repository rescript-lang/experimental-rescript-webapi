const text = (value) => ({ text: value });

const separated = (items, render) =>
  items.flatMap((item, index) => [...(index === 0 ? [] : [text(", ")]), ...render(item)]);

// Field signatures are text, not structured compiler type nodes. Preserve their syntax
// (especially function arrows) and attach links only to complete identifier paths.
const renderedParts = (signature) => {
  const tokens = [
    ...signature.matchAll(/"(?:\\.|[^"\\])*"|'[\w]+|#[\w]+|[A-Za-z_]\w*(?:\.[A-Za-z_]\w*)*/g),
  ];
  if (tokens.length === 0) return [text(signature)];
  return tokens.flatMap((token, index) => {
    const previous = tokens[index - 1];
    const start = previous ? previous.index + previous[0].length : 0;
    const value = token[0];
    return [
      text(signature.slice(start, token.index)),
      /^[A-Za-z_]/.test(value) ? { text: value, path: value } : text(value),
      ...(index === tokens.length - 1 ? [text(signature.slice(token.index + value.length))] : []),
    ];
  });
};

export const parameterParts = (parameter) => [
  ...(parameter.label ? [text(`~${parameter.label}: `)] : []),
  ...signatureParts(parameter.type),
  ...(parameter.optional ? [text("=?")] : []),
];

export const signatureParts = (item) => {
  switch (item.kind) {
    // Record field signatures parsed by signature.astro have no kind discriminator.
    case undefined:
    case "constructor":
      return [
        { text: item.path, path: item.path },
        ...(item.genericTypeParameters?.length
          ? [text("<"), ...separated(item.genericTypeParameters, signatureParts), text(">")]
          : []),
      ];
    case "variable":
      return [text(`'${item.name}`)];
    case "rendered":
      return renderedParts(item.signature);
    case "tuple":
      return [text("("), ...separated(item.elements, signatureParts), text(")")];
    case "function":
      return [
        text("("),
        ...separated(item.parameters, parameterParts),
        text(") => "),
        ...signatureParts(item.returnType),
      ];
    default:
      throw new Error(`Unsupported documentation signature kind: ${item.kind}`);
  }
};
