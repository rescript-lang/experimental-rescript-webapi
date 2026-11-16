const text = (value) => ({ text: value });

const separated = (items, render) =>
  items.flatMap((item, index) => [...(index === 0 ? [] : [text(", ")]), ...render(item)]);

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
      return [text(item.signature)];
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
