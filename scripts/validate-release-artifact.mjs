const isRecord = (value) => typeof value === "object" && value !== null && !Array.isArray(value);

const publishLifecycleScripts = [
  "prepublish",
  "prepare",
  "prepack",
  "postpack",
  "prepublishOnly",
  "publish",
  "postpublish",
];

export const validateReleaseArtifact = (expected, packed) => {
  if (!isRecord(expected) || !isRecord(packed)) {
    return ["Expected and packed metadata must be objects."];
  }

  const errors = [
    ...(packed.name === expected.name ? [] : ["Packed name does not match package metadata."]),
    ...(packed.version === expected.version && /^1\.0\.0-alpha\.[1-9]\d*$/.test(packed.version)
      ? []
      : ["Packed version does not match the numbered alpha package metadata."]),
  ];
  const publishConfig = packed.publishConfig;
  if (!isRecord(publishConfig)) {
    errors.push("Packed artifact is missing publishConfig.");
  } else {
    if (publishConfig.access !== "public") {
      errors.push("Packed artifact must set publishConfig.access to public.");
    }
    if (publishConfig.provenance !== true) {
      errors.push("Packed artifact must enable publish provenance.");
    }
    const unexpectedConfig = Object.keys(publishConfig).filter(
      (key) => key !== "access" && key !== "provenance",
    );
    if (unexpectedConfig.length > 0) {
      errors.push(
        `Packed artifact has unexpected publishConfig overrides: ${unexpectedConfig.join(", ")}.`,
      );
    }
  }

  const scripts = isRecord(packed.scripts) ? packed.scripts : {};
  const configuredLifecycleScripts = publishLifecycleScripts.filter(
    (scriptName) => scripts[scriptName] !== undefined,
  );
  if (configuredLifecycleScripts.length > 0) {
    errors.push(
      `Packed artifact has publish lifecycle scripts: ${configuredLifecycleScripts.join(", ")}.`,
    );
  }
  return errors;
};
