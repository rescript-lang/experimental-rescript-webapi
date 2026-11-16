const isLinkedType = (type) =>
  typeof type?.path === "string" &&
  Array.isArray(type.genericTypeParameters ?? []) &&
  (type.genericTypeParameters ?? []).every(isLinkedType);

// The full compiler-rendered signature is always shown by value.astro.
// Only add the linked summary when every type can be represented faithfully.
export const getLinkedSignature = (detail) => {
  if (
    detail?.kind !== "signature" ||
    !Array.isArray(detail.details?.parameters) ||
    detail.details.parameters.length === 0
  ) {
    return null;
  }

  const parameters = detail.details.parameters.map((parameter) => parameter?.type);
  const returnType = detail.details.returnType;
  return parameters.every(isLinkedType) && isLinkedType(returnType)
    ? { parameters, returnType }
    : null;
};
