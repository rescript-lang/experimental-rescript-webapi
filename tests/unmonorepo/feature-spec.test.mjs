import test from "node:test";
import assert from "node:assert/strict";
import { existsSync, readFileSync } from "node:fs";
import { dirname, join } from "node:path";
import { fileURLToPath } from "node:url";
import {
  featureSpecs,
  migratedLeafName,
  publicModuleToInternalPrefix,
  publicNameForLeafModule,
} from "../../scripts/unmonorepo/feature-spec.mjs";

const repoRoot = join(dirname(fileURLToPath(import.meta.url)), "..", "..");

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
        featureName: "Base",
        internalPrefix: "Base",
      },
      {
        dirName: "DOM",
        legacyNamespace: "WebApiDOM",
        publicModule: "DOM",
        featureName: "DOM",
        internalPrefix: "Dom",
      },
    ],
  );

  assert.equal(featureSpecs.length, 44);
});

test("keeps shared internal event helper shapes beside the Event modules", () => {
  assert.equal(existsSync(join(repoRoot, "src", "Event", "EventTypes.res")), true);
  assert.equal(existsSync(join(repoRoot, "src", "EventTypes", "EventTypes.res")), false);

  const eventTypesSource = readFileSync(
    join(repoRoot, "src", "Event", "EventTypes.res"),
    "utf8",
  );
  assert.equal(eventTypesSource.includes("@editor.completeFrom(AbortController)"), false);
  assert.equal(eventTypesSource.includes("@editor.completeFrom(AbortSignal)"), false);
  assert.equal(eventTypesSource.includes("@editor.completeFrom(ExtendableEvent)"), false);
});

test("does not keep a public Base wrapper module", () => {
  assert.equal(existsSync(join(repoRoot, "src", "Base", "Base.res")), false);
});

test("keeps Base__Document from re-exporting leaf-owned aliases", () => {
  const baseDocumentSource = readFileSync(
    join(repoRoot, "src", "Base", "Base__Document.res"),
    "utf8",
  );

  assert.equal(baseDocumentSource.includes("type location = Location.t"), false);
  assert.equal(baseDocumentSource.includes("type element = Base__Element.element"), false);
});

test("keeps public object shapes from exposing Base__ implementation types", () => {
  const baseDocumentSource = readFileSync(
    join(repoRoot, "src", "Base", "Base__Document.res"),
    "utf8",
  );
  const baseElementSource = readFileSync(
    join(repoRoot, "src", "Base", "Base__Element.res"),
    "utf8",
  );

  for (const source of [baseDocumentSource, baseElementSource]) {
    assert.equal(source.includes("Base__Node.t"), false);
    assert.equal(source.includes("Base__Element.t"), false);
    assert.equal(source.includes("Base__HTMLElement.t"), false);
    assert.equal(source.includes("Base__NodeList.t"), false);
    assert.equal(source.includes("Base__HTMLCollection.t"), false);
    assert.equal(source.includes("Base__NamedNodeMap.t"), false);
    assert.equal(source.includes("Base__ShadowRoot.t"), false);
    assert.equal(source.includes("Base__HTMLSlotElement.t"), false);
  }
});

test("keeps DOMTokenList as the direct public object owner", () => {
  const domTokenListSource = readFileSync(join(repoRoot, "src", "Base", "DOMTokenList.res"), "utf8");

  assert.equal(existsSync(join(repoRoot, "src", "Base", "Base__DOMTokenList.res")), false);
  assert.match(domTokenListSource, /^type t = private \{$/m);
  assert.equal(domTokenListSource.includes("Base__DOMTokenList"), false);
});

test("documents private spreads for shared object bases", () => {
  const moduleTypeStructureSource = readFileSync(
    join(repoRoot, "docs", "content", "docs", "contributing", "module-type-structure.mdx"),
    "utf8",
  );

  assert.match(
    moduleTypeStructureSource,
    /type t = Base__Element\.t = private \{\.\.\.Base__Element\.t\}/,
  );
  assert.equal(
    moduleTypeStructureSource.includes("type t = Base__Element.t = {...Base__Element.t}"),
    false,
  );
});

test("keeps DOM owner type aliases out of public compatibility modules", () => {
  const domTypesSource = readFileSync(join(repoRoot, "src", "DOMExtended", "DOMTypes.res"), "utf8");
  const baseElementSource = readFileSync(
    join(repoRoot, "src", "Base", "Base__Element.res"),
    "utf8",
  );

  assert.equal(existsSync(join(repoRoot, "src", "DOM", "DOM.res")), false);
  assert.match(baseElementSource, /^type rec t = \{$/m);
  assert.equal(baseElementSource.includes("type rec element = {"), false);
  assert.equal(existsSync(join(repoRoot, "src", "Base", "Base__DOMTypes.res")), false);
  assert.equal(/^type document\b/m.test(domTypesSource), false);
  assert.equal(/^type element\b/m.test(domTypesSource), false);
  assert.equal(domTypesSource.includes("type nodeList"), false);
  assert.equal(domTypesSource.includes("type htmlCollection"), false);
  assert.equal(domTypesSource.includes("type domTokenList"), false);
  assert.equal(domTypesSource.includes("type namedNodeMap"), false);
});

test("keeps CSSStyleSheet as the public stylesheet type", () => {
  const config = JSON.parse(readFileSync(join(repoRoot, "rescript.json"), "utf8"));
  const cssomSource = config.sources.find((source) => source.dir === "src/CSSOM");
  const domTypesSource = readFileSync(join(repoRoot, "src", "DOMExtended", "DOMTypes.res"), "utf8");

  assert.ok(cssomSource, "src/CSSOM source entry should exist");
  assert.ok(cssomSource.public.includes("CSSStyleSheet"));
  assert.equal(cssomSource.public.includes("StyleSheet"), false);
  assert.equal(existsSync(join(repoRoot, "src", "CSSOM", "StyleSheet.res")), false);
  assert.equal(/^type styleSheet\b/m.test(domTypesSource), false);
});

test("keeps DOM feature minimal for React-oriented consumers", () => {
  const config = JSON.parse(readFileSync(join(repoRoot, "rescript.json"), "utf8"));
  const sourceEntries = config.sources.filter((source) => source.dir?.startsWith("src/"));
  const documentSource = sourceEntries.find((source) => source.feature === "Document");
  const elementSource = sourceEntries.find((source) => source.feature === "Element");
  const baseSource = sourceEntries.find((source) => source.dir === "src/Base");
  const htmlSource = sourceEntries.find((source) => source.dir === "src/HTML");

  assert.ok(documentSource, "Document source entry should exist");
  assert.ok(elementSource, "Element source entry should exist");
  assert.ok(baseSource, "src/Base source entry should exist");
  assert.ok(htmlSource, "src/HTML source entry should exist");
  assert.deepEqual(config.features["WebAPI.DOM"], ["EventTypes", "Event", "Element", "Document"]);
  assert.deepEqual(documentSource, {
    dir: "src/DOM",
    files: ["Document.res"],
    feature: "Document",
    public: ["Document"],
  });
  assert.deepEqual(elementSource, {
    dir: "src/DOM",
    files: ["Element.res"],
    feature: "Element",
    public: ["Element"],
  });
  assert.ok(baseSource.public.includes("HTMLCollection"));
  assert.ok(baseSource.public.includes("NamedNodeMap"));
  assert.ok(baseSource.public.includes("Node"));
  assert.ok(baseSource.public.includes("NodeList"));
  assert.ok(htmlSource.public.includes("HTMLElement"));
});

test("keeps public feature groups separate from internal source features", () => {
  const config = JSON.parse(readFileSync(join(repoRoot, "rescript.json"), "utf8"));
  const sourceEntries = config.sources.filter((source) => source.dir?.startsWith("src/"));
  const internalFeatures = new Set(sourceEntries.map((source) => source.feature));

  assert.ok(!config.features.Base, "Base should not be a public feature group");
  assert.ok(!config.features["WebAPI.Base"], "WebAPI.Base should not be a public feature group");
  assert.ok(!config.features.DOMExtended, "DOMExtended should not be a public feature group");
  assert.ok(
    !config.features["WebAPI.DOMExtended"],
    "WebAPI.DOMExtended should not be a public feature group",
  );

  for (const source of sourceEntries) {
    assert.ok(
      !source.feature.startsWith("WebAPI."),
      `${source.dir} should use an unprefixed internal feature name`,
    );
  }

  for (const [featureName, dependencies] of Object.entries(config.features)) {
    assert.ok(featureName.startsWith("WebAPI."), `${featureName} should be a public feature group`);

    for (const dependency of dependencies) {
      assert.ok(!dependency.startsWith("WebAPI."), `${featureName} should depend on ${dependency} directly`);
      assert.ok(
        internalFeatures.has(dependency),
        `${featureName} depends on missing internal feature ${dependency}`,
      );
    }

    if (dependencies.includes("Base")) {
      assert.ok(dependencies.includes("Element"), `${featureName} should include Element with Base`);
      assert.ok(dependencies.includes("Document"), `${featureName} should include Document with Base`);
    }
  }
});

test("normalizes internal prefixes and public duplicate names", () => {
  assert.equal(publicModuleToInternalPrefix("DOM"), "Dom");
  assert.equal(publicModuleToInternalPrefix("URL"), "Url");
  assert.equal(publicNameForLeafModule("DOMTypes", "Dom"), "Types");
  assert.equal(publicNameForLeafModule("Document", "Dom"), "Document");
  assert.equal(publicNameForLeafModule("DOM", "Base"), "DOM");
  assert.equal(publicNameForLeafModule("PushEvent", "Push"), "PushEvent");
  assert.equal(publicNameForLeafModule("Storage", "WebStorage"), "Storage");
});

test("preserves direct public leaf modules while renaming duplicated internals", () => {
  const duplicateLeaves = new Set(["Types", "Global", "File", "Event"]);

  assert.equal(
    migratedLeafName({
      spec: { dirName: "Base", publicModule: "Base", internalPrefix: "Base" },
      leafName: "DOM",
      duplicateLeaves,
    }),
    "DOM",
  );
  assert.equal(
    migratedLeafName({
      spec: { dirName: "File", publicModule: "File", internalPrefix: "File" },
      leafName: "File",
      duplicateLeaves,
    }),
    "File",
  );
  assert.equal(
    migratedLeafName({
      spec: { dirName: "File", publicModule: "File", internalPrefix: "File" },
      leafName: "Types",
      duplicateLeaves,
    }),
    "FileTypes",
  );
  assert.equal(
    migratedLeafName({
      spec: { dirName: "Fetch", publicModule: "Fetch", internalPrefix: "Fetch" },
      leafName: "Global",
      duplicateLeaves,
    }),
    "Fetch",
  );
  assert.equal(
    migratedLeafName({
      spec: { dirName: "Canvas", publicModule: "Canvas", internalPrefix: "Canvas" },
      leafName: "Global",
      duplicateLeaves,
    }),
    "Canvas",
  );
  assert.equal(
    migratedLeafName({
      spec: { dirName: "WebWorkers", publicModule: "WebWorkers", internalPrefix: "WebWorkers" },
      leafName: "WorkerGlobalScope",
      duplicateLeaves,
    }),
    "Worker",
  );
  assert.equal(
    migratedLeafName({
      spec: { dirName: "WebWorkers", publicModule: "WebWorkers", internalPrefix: "WebWorkers" },
      leafName: "SharedWorkerGlobalScope",
      duplicateLeaves,
    }),
    "SharedWorkerScope",
  );
  assert.equal(
    migratedLeafName({
      spec: { dirName: "ServiceWorker", publicModule: "ServiceWorker", internalPrefix: "ServiceWorker" },
      leafName: "ServiceWorkerGlobalScope",
      duplicateLeaves,
    }),
    "ServiceWorkerScope",
  );
});
