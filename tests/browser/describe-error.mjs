const readProperty = (value, key) => {
  try {
    return typeof value === "object" && value !== null ? value[key] : undefined;
  } catch {
    return undefined;
  }
};

const stringifySafely = (value) => {
  try {
    return String(value);
  } catch {
    return "<unprintable>";
  }
};

export const describeError = (error) => {
  const cause = readProperty(error, "Error");
  const identity =
    readProperty(error, "RE_EXN_ID") ?? readProperty(error, "name") ?? stringifySafely(error);
  const message = readProperty(error, "message") ?? readProperty(cause, "message");
  const stack = readProperty(error, "stack") ?? readProperty(cause, "stack");

  let detail;
  try {
    detail = JSON.stringify(error, (_key, value) => {
      if (value instanceof Error) {
        return { name: value.name, message: value.message, stack: value.stack };
      }
      return typeof value === "bigint" ? `${value}n` : value;
    });
  } catch (serializationError) {
    detail = `Exception payload omitted: ${stringifySafely(serializationError)}`;
  }

  return {
    name: stringifySafely(identity),
    message: message === undefined ? "" : stringifySafely(message),
    stack: stack === undefined ? "" : stringifySafely(stack),
    detail: detail ?? stringifySafely(error),
  };
};
