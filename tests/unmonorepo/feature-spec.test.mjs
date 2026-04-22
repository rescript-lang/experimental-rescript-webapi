import test from "node:test";
import assert from "node:assert/strict";
import {
  featureSpecs,
  publicModuleToInternalPrefix,
  publicNameForLeafModule,
} from "../../scripts/unmonorepo/feature-spec.mjs";

test("defines all legacy feature mappings used by the unmonorepo migration", () => {
  assert.deepEqual(
    featureSpecs
      .filter(({ dirName }) => dirName === "Base" || dirName === "DOM")
      .map(({ dirName, legacyNamespace, publicModule, featureName, internalPrefix }) => ({
        dirName,
        legacyNamespace,
        publicModule,
        featureName,
        internalPrefix,
      })),
    [
      {
        dirName: "Base",
        legacyNamespace: "WebApiBase",
        publicModule: "Base",
        featureName: "WebApi.Base",
        internalPrefix: "Base",
      },
      {
        dirName: "DOM",
        legacyNamespace: "WebApiDOM",
        publicModule: "DOM",
        featureName: "WebApi.DOM",
        internalPrefix: "Dom",
      },
    ],
  );

  assert.equal(featureSpecs.length, 44);
});

test("normalizes internal prefixes and public duplicate names", () => {
  assert.equal(publicModuleToInternalPrefix("DOM"), "Dom");
  assert.equal(publicModuleToInternalPrefix("URL"), "Url");
  assert.equal(publicNameForLeafModule("DomTypes", "Dom"), "Types");
  assert.equal(publicNameForLeafModule("Document", "Dom"), "Document");
  assert.equal(publicNameForLeafModule("BaseDOM", "Base"), "DOM");
  assert.equal(publicNameForLeafModule("PushEvent", "Push"), "PushEvent");
  assert.equal(publicNameForLeafModule("WebStorageStorage", "WebStorage"), "Storage");
});
