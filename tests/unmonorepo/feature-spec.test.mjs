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

test("keeps DOM.res limited to the core base type surface", () => {
  const domSource = readFileSync(join(repoRoot, "src", "DOM", "DOM.res"), "utf8");
  const baseElementSource = readFileSync(
    join(repoRoot, "src", "Base", "Base__Element.res"),
    "utf8",
  );
  const declaredTypes = [];

  for (const rawLine of domSource.split("\n")) {
    const line = rawLine.trim();
    const typeMatch = line.match(/^type(?:\s+rec)?\s+([a-z][A-Za-z0-9_]*)/);
    if (typeMatch) {
      declaredTypes.push(typeMatch[1]);
      continue;
    }

    const andMatch = line.match(/^@editor\.completeFrom\([^)]*\)\s+and\s+([a-z][A-Za-z0-9_]*)/);
    if (andMatch) {
      declaredTypes.push(andMatch[1]);
    }
  }

  assert.deepEqual(declaredTypes, ["event", "eventTarget", "element"]);
  assert.match(domSource, /^type element = Base__Element\.t = \{\.\.\.Base__Element\.t\}$/m);
  assert.match(baseElementSource, /^type rec t = \{$/m);
  assert.equal(baseElementSource.includes("type rec element = {"), false);
  assert.equal(domSource.includes("Base.Element.element"), false);
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
