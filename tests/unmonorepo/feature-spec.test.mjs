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
        featureName: "WebAPI.Base",
        internalPrefix: "Base",
      },
      {
        dirName: "DOM",
        legacyNamespace: "WebApiDOM",
        publicModule: "DOM",
        featureName: "WebAPI.DOM",
        internalPrefix: "Dom",
      },
    ],
  );

  assert.equal(featureSpecs.length, 44);
});

test("keeps shared internal event helper shapes under the EventTypes feature root", () => {
  assert.equal(existsSync(join(repoRoot, "src", "EventTypes", "EventTypes.res")), true);
  assert.equal(existsSync(join(repoRoot, "src", "Event", "EventTypes.res")), false);

  const eventTypesSource = readFileSync(
    join(repoRoot, "src", "EventTypes", "EventTypes.res"),
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

test("keeps DOM owner type aliases out of public compatibility modules", () => {
  const domTypesSource = readFileSync(join(repoRoot, "src", "DOMExtended", "DomTypes.res"), "utf8");
  const baseElementSource = readFileSync(
    join(repoRoot, "src", "Base", "Base__Element.res"),
    "utf8",
  );

  assert.equal(existsSync(join(repoRoot, "src", "DOM", "DOM.res")), false);
  assert.match(baseElementSource, /^type rec t = \{$/m);
  assert.equal(baseElementSource.includes("type rec element = {"), false);
  assert.equal(existsSync(join(repoRoot, "src", "Base", "Base__DomTypes.res")), false);
  assert.equal(/^type document\b/m.test(domTypesSource), false);
  assert.equal(/^type element\b/m.test(domTypesSource), false);
  assert.equal(domTypesSource.includes("type nodeList"), false);
  assert.equal(domTypesSource.includes("type htmlCollection"), false);
  assert.equal(domTypesSource.includes("type domTokenList"), false);
  assert.equal(domTypesSource.includes("type namedNodeMap"), false);
});

test("keeps DOM feature minimal for React-oriented consumers", () => {
  const config = JSON.parse(readFileSync(join(repoRoot, "rescript.json"), "utf8"));
  const sourceEntries = config.sources.filter((source) => source.dir?.startsWith("src/"));
  const domSource = sourceEntries.find((source) => source.dir === "src/DOM");
  const htmlSource = sourceEntries.find((source) => source.dir === "src/HTML");

  assert.ok(domSource, "src/DOM source entry should exist");
  assert.ok(htmlSource, "src/HTML source entry should exist");
  assert.deepEqual(config.features["WebAPI.DOM"], []);
  assert.deepEqual(domSource.public, ["Document", "Element"]);
  assert.ok(htmlSource.public.includes("HTMLCollection"));
  assert.ok(htmlSource.public.includes("HTMLElement"));
});

test("normalizes internal prefixes and public duplicate names", () => {
  assert.equal(publicModuleToInternalPrefix("DOM"), "Dom");
  assert.equal(publicModuleToInternalPrefix("URL"), "Url");
  assert.equal(publicNameForLeafModule("DomTypes", "Dom"), "Types");
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
