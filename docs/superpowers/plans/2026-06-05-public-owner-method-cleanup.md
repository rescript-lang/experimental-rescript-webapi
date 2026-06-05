# Public Owner Method Cleanup Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Normalize Web API method bindings so public object modules own their receiver `type t` and expose pipeable `@send` functions, while `*Types.res` and `DomTypes.res` stop being the primary public method receiver surface.

**Architecture:** Keep `@send external` as the method-binding mechanism; do not introduce function-valued object fields. Migrate in feature-sized slices by first adding an audit harness with a transition allowlist, then moving receiver ownership from `DomTypes.*` and feature `*Types.*` records into public modules that expose `type t`. Shared inherited method sets continue to use `module Impl` only where the same methods must be included by multiple concrete modules.

**Tech Stack:** ReScript source modules, `rescript.json` feature-gated sources, Node test scripts under `tests/unmonorepo`, compile-only ReScript tests, package build/test checks.

---

## Audit Baseline

The current source tree has these method/type-shape characteristics:

- `779` `@send` bindings across `163` files.
- `679` direct top-level pipeable `@send` bindings across `147` files.
- `100` `@send` bindings inside `module Impl` across `16` files.
- `471` record/object-shaped type definitions across `80` files.
- `0` function-valued method fields inside record/object-shaped types.
- `108` files with `@send` methods do not define a local `type t`; these are the main cleanup candidates.

Largest direct method surfaces:

- `src/Canvas/CanvasRenderingContext2D.res`: `82` `@send` bindings.
- `src/Window/Window.res`: `38` `@send` bindings.
- `src/Geometry/DOMMatrix.res`: `28` `@send` bindings.
- `src/DOMExtended/Range.res`: `23` `@send` bindings.
- `src/DOMExtended/Selection.res`: `15` `@send` bindings.
- `src/IndexedDB/IDBObjectStore.res`: `15` `@send` bindings.

Desired steady-state rules:

- Public object modules that expose methods define or same-type-alias a local `type t`.
- `@send` receiver types in public modules use `t` or an `Impl` parameter type, not `DomTypes.foo`, `CanvasTypes.foo`, `IndexedDbTypes.foo`, or other feature bucket receiver aliases.
- `*Types.res` and `DomTypes.res` hold option records, init dictionaries, event payload shapes, enums, and transitional compatibility shapes only.
- Record/object shapes expose properties only. They do not contain method fields.
- `module Impl` is reserved for inherited/shared method sets such as `Node`, `Element`, `HTMLElement`, `EventTarget`, `Blob`, and audio node bases.

## File Structure

Create:

- `scripts/audit-method-style.mjs`: read-only static audit utility that classifies ReScript files by `@send` usage, local receiver ownership, `Impl` usage, type-bucket receivers, and function-valued record fields.
- `tests/unmonorepo/method-style.test.mjs`: regression tests for the desired method-binding rules and the explicit transition allowlist.

Modify:

- `package.json`: only if a dedicated `npm run audit:method-style` command is wanted. This plan keeps the script callable directly to avoid expanding package scripts unless needed.
- `src/Canvas/CanvasRenderingContext2D.res`: first high-impact migration from `DomTypes.canvasRenderingContext2D` receiver to local public `type t`.
- `src/DOMExtended/Range.res`: DOMExtended migration example from `DomTypes.range` receiver to local public `type t`.
- `src/DOMExtended/Selection.res`: DOMExtended migration example from `DomTypes.selection` receiver to local public `type t`.
- `src/IndexedDB/IDBObjectStore.res`: feature-bucket migration example from `IndexedDbTypes.idbObjectStore` receiver to local public `type t`.
- `src/IndexedDB/IDBIndex.res`: feature-bucket migration example from `IndexedDbTypes.idbIndex` receiver to local public `type t`.
- `src/Window/Window.res`: final large migration once DOM and feature bucket patterns are proven.
- The relevant `*Types.res` or `DomTypes.res` files only when a type alias becomes unused after a slice.

Test:

- `tests/unmonorepo/method-style.test.mjs`
- Existing compile-only tests under `tests/DOMAPI`
- `node tests/unmonorepo/feature-spec.test.mjs`
- `npm test`
- Per-feature `rescript build --features <feature> --prod` sweep

---

### Task 1: Add Static Method-Style Audit Harness

**Files:**

- Create: `scripts/audit-method-style.mjs`
- Create: `tests/unmonorepo/method-style.test.mjs`

- [ ] **Step 1: Create the audit script**

Create `scripts/audit-method-style.mjs`:

```js
import { existsSync, readdirSync, readFileSync } from "node:fs";
import { join, relative } from "node:path";

const repoRoot = new URL("..", import.meta.url).pathname;
const srcRoot = join(repoRoot, "src");

function walk(dir, files = []) {
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    const path = join(dir, entry.name);
    if (entry.isDirectory()) {
      walk(path, files);
    } else if (entry.isFile() && path.endsWith(".res")) {
      files.push(path);
    }
  }
  return files;
}

function countMatches(source, regex) {
  return source.match(regex)?.length ?? 0;
}

function receiverBuckets(source) {
  const buckets = new Set();
  const sendExternalRegex = /@send\s+(?:\n\s*)?external\s+\w+:\s*([\s\S]*?)=>/g;
  for (const match of source.matchAll(sendExternalRegex)) {
    const signaturePrefix = match[1].replace(/\s+/g, " ");
    if (/\bt\b/.test(signaturePrefix.split(",")[0])) {
      buckets.add("local-t");
    }
    if (/\bT\.t\b/.test(signaturePrefix.split(",")[0])) {
      buckets.add("impl-param");
    }
    if (/\bDomTypes\.[A-Za-z0-9_]+/.test(signaturePrefix.split(",")[0])) {
      buckets.add("dom-types");
    }
    if (/\b[A-Za-z0-9]+Types\.[A-Za-z0-9_]+/.test(signaturePrefix.split(",")[0])) {
      buckets.add("feature-types");
    }
    if (/\bBase__[A-Za-z0-9_]+\.t\b/.test(signaturePrefix.split(",")[0])) {
      buckets.add("base-internal");
    }
  }
  return [...buckets].sort();
}

export function auditMethodStyle() {
  if (!existsSync(srcRoot)) {
    throw new Error(`Missing source root: ${srcRoot}`);
  }

  const files = walk(srcRoot);
  const entries = files.map((file) => {
    const source = readFileSync(file, "utf8");
    const relPath = relative(repoRoot, file);
    const sendCount = countMatches(source, /@send/g);
    const hasLocalT = /^type t\b/m.test(source);
    const hasImpl = /^module Impl = \(/m.test(source);
    const includesImpl = /^include Impl/m.test(source);
    const recordTypeCount = countMatches(
      source,
      /^type(?: rec)? [A-Za-z0-9_]+(?:<[^=\n]+>)? = (?:private )?\{/gm,
    );
    const functionFieldCount = countMatches(
      source,
      /^\s*(?:mutable )?[A-Za-z_][A-Za-z0-9_]*\??:\s*.*=>/gm,
    );

    return {
      path: relPath,
      sendCount,
      hasLocalT,
      hasImpl,
      includesImpl,
      receiverBuckets: receiverBuckets(source),
      recordTypeCount,
      functionFieldCount,
    };
  });

  return {
    files: entries,
    summary: {
      resFiles: entries.length,
      sendOccurrences: entries.reduce((sum, entry) => sum + entry.sendCount, 0),
      sendFiles: entries.filter((entry) => entry.sendCount > 0).length,
      implFiles: entries.filter((entry) => entry.hasImpl).length,
      includeImplFiles: entries.filter((entry) => entry.includesImpl).length,
      recordTypeFiles: entries.filter((entry) => entry.recordTypeCount > 0).length,
      recordTypes: entries.reduce((sum, entry) => sum + entry.recordTypeCount, 0),
      functionFieldOccurrences: entries.reduce(
        (sum, entry) => sum + entry.functionFieldCount,
        0,
      ),
    },
  };
}

if (process.argv[1] === new URL(import.meta.url).pathname) {
  console.log(JSON.stringify(auditMethodStyle(), null, 2));
}
```

- [ ] **Step 2: Add the baseline regression test**

Create `tests/unmonorepo/method-style.test.mjs`:

```js
import test from "node:test";
import assert from "node:assert/strict";
import { auditMethodStyle } from "../../scripts/audit-method-style.mjs";

const allowedTypeBucketReceivers = new Set([
  "src/Canvas/CanvasRenderingContext2D.res",
  "src/Window/Window.res",
  "src/DOMExtended/Range.res",
  "src/DOMExtended/Selection.res",
  "src/IndexedDB/IDBObjectStore.res",
  "src/IndexedDB/IDBIndex.res",
]);

test("keeps object shapes property-only", () => {
  const audit = auditMethodStyle();

  assert.equal(audit.summary.functionFieldOccurrences, 0);
});

test("tracks public method modules still using type-bucket receivers", () => {
  const audit = auditMethodStyle();
  const currentTypeBucketReceivers = audit.files
    .filter((entry) =>
      entry.receiverBuckets.includes("dom-types") ||
      entry.receiverBuckets.includes("feature-types")
    )
    .map((entry) => entry.path);

  for (const path of currentTypeBucketReceivers) {
    assert.ok(
      allowedTypeBucketReceivers.has(path),
      `${path} should define a public receiver type or be added to the transition allowlist`,
    );
  }
});

test("keeps Base__ implementation receivers out of public method modules", () => {
  const audit = auditMethodStyle();
  const publicBaseReceiverFiles = audit.files
    .filter((entry) => entry.receiverBuckets.includes("base-internal"))
    .map((entry) => entry.path);

  assert.deepEqual(publicBaseReceiverFiles, []);
});
```

- [ ] **Step 3: Run the new test and confirm the expected baseline failure**

Run:

```bash
node tests/unmonorepo/method-style.test.mjs
```

Expected: FAIL because the initial allowlist is intentionally smaller than the current tree. Use the failure output to decide whether to start with a narrow pilot allowlist or seed the complete current allowlist.

- [ ] **Step 4: Seed the full transition allowlist**

Replace `allowedTypeBucketReceivers` with the exact paths printed by the failure. Keep the six pilot files grouped at the top with a comment:

```js
const pilotTypeBucketReceivers = [
  "src/Canvas/CanvasRenderingContext2D.res",
  "src/Window/Window.res",
  "src/DOMExtended/Range.res",
  "src/DOMExtended/Selection.res",
  "src/IndexedDB/IDBObjectStore.res",
  "src/IndexedDB/IDBIndex.res",
];

const remainingTransitionTypeBucketReceivers = [
  // Paste the remaining failing paths here in sorted order.
];

const allowedTypeBucketReceivers = new Set([
  ...pilotTypeBucketReceivers,
  ...remainingTransitionTypeBucketReceivers,
]);
```

- [ ] **Step 5: Run the method-style test and verify it passes**

Run:

```bash
node tests/unmonorepo/method-style.test.mjs
```

Expected: PASS. This establishes the audit harness without changing public bindings yet.

- [ ] **Step 6: Commit the audit harness**

```bash
git add scripts/audit-method-style.mjs tests/unmonorepo/method-style.test.mjs
git commit -m "Add method style audit"
```

---

### Task 2: Migrate `CanvasRenderingContext2D` to a Public Receiver

**Files:**

- Modify: `src/Canvas/CanvasRenderingContext2D.res`
- Modify: `tests/unmonorepo/method-style.test.mjs`

- [ ] **Step 1: Add the local public receiver type**

At the top of `src/Canvas/CanvasRenderingContext2D.res`, add:

```rescript
type t = DomTypes.canvasRenderingContext2D
```

- [ ] **Step 2: Replace receiver positions**

In `src/Canvas/CanvasRenderingContext2D.res`, replace every method receiver:

```rescript
DomTypes.canvasRenderingContext2D
```

with:

```rescript
t
```

Do not replace return types or parameter types for other DOM objects in this task unless the compiler requires it.

- [ ] **Step 3: Remove the file from the type-bucket allowlist**

In `tests/unmonorepo/method-style.test.mjs`, remove:

```js
"src/Canvas/CanvasRenderingContext2D.res",
```

from `allowedTypeBucketReceivers`.

- [ ] **Step 4: Run the focused method-style test**

Run:

```bash
node tests/unmonorepo/method-style.test.mjs
```

Expected: PASS, proving `CanvasRenderingContext2D.res` no longer binds methods through `DomTypes.canvasRenderingContext2D`.

- [ ] **Step 5: Run the package test**

Run:

```bash
npm test
```

Expected: PASS.

- [ ] **Step 6: Commit the canvas receiver cleanup**

```bash
git add src/Canvas/CanvasRenderingContext2D.res tests/unmonorepo/method-style.test.mjs
git commit -m "Move CanvasRenderingContext2D methods to public receiver"
```

---

### Task 3: Migrate DOMExtended Receiver Modules

**Files:**

- Modify: `src/DOMExtended/Range.res`
- Modify: `src/DOMExtended/Selection.res`
- Modify: `tests/unmonorepo/method-style.test.mjs`

- [ ] **Step 1: Add `Range.t` as a same-type public receiver**

At the top of `src/DOMExtended/Range.res`, add:

```rescript
type t = DomTypes.range = private {...DomTypes.range}
```

- [ ] **Step 2: Replace `Range` receiver positions**

In `src/DOMExtended/Range.res`, replace receiver occurrences of:

```rescript
DomTypes.range
```

with:

```rescript
t
```

Keep non-receiver references to other DOM object types unchanged for this task.

- [ ] **Step 3: Add `Selection.t` as a same-type public receiver**

At the top of `src/DOMExtended/Selection.res`, add:

```rescript
type t = DomTypes.selection = private {...DomTypes.selection}
```

- [ ] **Step 4: Replace `Selection` receiver positions**

In `src/DOMExtended/Selection.res`, replace receiver occurrences of:

```rescript
DomTypes.selection
```

with:

```rescript
t
```

- [ ] **Step 5: Shrink the allowlist**

In `tests/unmonorepo/method-style.test.mjs`, remove:

```js
"src/DOMExtended/Range.res",
"src/DOMExtended/Selection.res",
```

from `allowedTypeBucketReceivers`.

- [ ] **Step 6: Run focused verification**

Run:

```bash
node tests/unmonorepo/method-style.test.mjs
node tests/unmonorepo/feature-spec.test.mjs
npm test
```

Expected: all commands PASS.

- [ ] **Step 7: Commit the DOMExtended receiver cleanup**

```bash
git add src/DOMExtended/Range.res src/DOMExtended/Selection.res tests/unmonorepo/method-style.test.mjs
git commit -m "Move DOMExtended methods to public receivers"
```

---

### Task 4: Migrate IndexedDB Receiver Modules

**Files:**

- Modify: `src/IndexedDB/IDBObjectStore.res`
- Modify: `src/IndexedDB/IDBIndex.res`
- Modify: `tests/unmonorepo/method-style.test.mjs`

- [ ] **Step 1: Add `IDBObjectStore.t` as a public receiver**

At the top of `src/IndexedDB/IDBObjectStore.res`, add:

```rescript
type t = IndexedDbTypes.idbObjectStore = private {...IndexedDbTypes.idbObjectStore}
```

- [ ] **Step 2: Replace `IDBObjectStore` receiver positions**

In `src/IndexedDB/IDBObjectStore.res`, replace receiver occurrences of:

```rescript
IndexedDbTypes.idbObjectStore
```

with:

```rescript
t
```

- [ ] **Step 3: Add `IDBIndex.t` as a public receiver**

At the top of `src/IndexedDB/IDBIndex.res`, add:

```rescript
type t = IndexedDbTypes.idbIndex = private {...IndexedDbTypes.idbIndex}
```

- [ ] **Step 4: Replace `IDBIndex` receiver positions**

In `src/IndexedDB/IDBIndex.res`, replace receiver occurrences of:

```rescript
IndexedDbTypes.idbIndex
```

with:

```rescript
t
```

- [ ] **Step 5: Shrink the allowlist**

In `tests/unmonorepo/method-style.test.mjs`, remove:

```js
"src/IndexedDB/IDBObjectStore.res",
"src/IndexedDB/IDBIndex.res",
```

from `allowedTypeBucketReceivers`.

- [ ] **Step 6: Run IndexedDB feature build**

Run:

```bash
node_modules/.bin/rescript clean
node_modules/.bin/rescript build --features WebAPI.IndexedDB --prod
```

Expected: build exits `0`.

- [ ] **Step 7: Run package tests**

Run:

```bash
node tests/unmonorepo/method-style.test.mjs
npm test
```

Expected: all commands PASS.

- [ ] **Step 8: Commit the IndexedDB receiver cleanup**

```bash
git add src/IndexedDB/IDBObjectStore.res src/IndexedDB/IDBIndex.res tests/unmonorepo/method-style.test.mjs
git commit -m "Move IndexedDB methods to public receivers"
```

---

### Task 5: Migrate `Window` Receiver Bindings

**Files:**

- Modify: `src/Window/Window.res`
- Modify: `tests/unmonorepo/method-style.test.mjs`

- [ ] **Step 1: Inspect current `Window.t` ownership**

Run:

```bash
sed -n '1,120p' src/Window/Window.res
```

Expected: identify whether `Window.res` already defines `type t`, aliases through `DomTypes.window`, or uses another receiver owner.

- [ ] **Step 2: Add or normalize the local receiver**

If `Window.res` does not define `type t`, add the public receiver near the top:

```rescript
type t = private {}
```

If it already defines a compatible `type t`, keep the existing definition and use it as the receiver.

- [ ] **Step 3: Replace `Window` receiver positions**

In `src/Window/Window.res`, replace `@send` receiver references to `DomTypes.window` or any feature-bucket window receiver with:

```rescript
t
```

Do not change global functions that intentionally bind through `@scope("globalThis")` or equivalent non-method bindings.

- [ ] **Step 4: Shrink the allowlist**

In `tests/unmonorepo/method-style.test.mjs`, remove:

```js
"src/Window/Window.res",
```

from `allowedTypeBucketReceivers`.

- [ ] **Step 5: Run Window feature build**

Run:

```bash
node_modules/.bin/rescript clean
node_modules/.bin/rescript build --features WebAPI.Window --prod
```

Expected: build exits `0`.

- [ ] **Step 6: Run package tests**

Run:

```bash
node tests/unmonorepo/method-style.test.mjs
npm test
```

Expected: all commands PASS.

- [ ] **Step 7: Commit the Window receiver cleanup**

```bash
git add src/Window/Window.res tests/unmonorepo/method-style.test.mjs
git commit -m "Move Window methods to public receiver"
```

---

### Task 6: Repeat by Feature Group Until the Allowlist Is Empty

**Files:**

- Modify: `tests/unmonorepo/method-style.test.mjs`
- Modify: one feature directory at a time under `src/<Feature>`

- [ ] **Step 1: Pick the next feature from the allowlist**

Run:

```bash
node tests/unmonorepo/method-style.test.mjs
```

Expected: PASS. Use the remaining `allowedTypeBucketReceivers` entries in the test file as the migration queue.

- [ ] **Step 2: For each public method module, add a local receiver**

For a module currently using a feature bucket receiver:

```rescript
@send
external methodName: FeatureTypes.someObject => unit = "methodName"
```

add a local same-type public receiver:

```rescript
type t = FeatureTypes.someObject = private {...FeatureTypes.someObject}
```

and change the method receiver:

```rescript
@send
external methodName: t => unit = "methodName"
```

- [ ] **Step 3: Prefer `Impl` only for true inherited method sets**

Use this pattern only when multiple public modules need the same method set:

```rescript
module Impl = (
  T: {
    type t
  },
) => {
  @send
  external methodName: T.t => unit = "methodName"
}

include Impl({type t = t})
```

Do not introduce `Impl` for a single module with no shared consumers.

- [ ] **Step 4: Remove migrated files from the allowlist**

Delete each migrated path from `allowedTypeBucketReceivers`.

- [ ] **Step 5: Run the feature build**

Replace `<FeatureName>` with the public feature group that owns the migrated modules:

```bash
node_modules/.bin/rescript clean
node_modules/.bin/rescript build --features WebAPI.<FeatureName> --prod
```

Expected: build exits `0`.

- [ ] **Step 6: Run global checks for each slice**

Run:

```bash
node tests/unmonorepo/method-style.test.mjs
node tests/unmonorepo/feature-spec.test.mjs
npm test
```

Expected: all commands PASS.

- [ ] **Step 7: Commit each feature slice**

```bash
git add src tests/unmonorepo/method-style.test.mjs
git commit -m "Move <FeatureName> methods to public receivers"
```

---

### Task 7: Remove Dead Type-Bucket Receiver Aliases

**Files:**

- Modify: `src/DOMExtended/DomTypes.res`
- Modify: relevant `src/<Feature>/*Types.res`
- Modify: `tests/unmonorepo/method-style.test.mjs`

- [ ] **Step 1: Search for migrated receiver aliases**

For each migrated receiver alias, run:

```bash
rg -n "DomTypes\\.canvasRenderingContext2D|DomTypes\\.range|DomTypes\\.selection|IndexedDbTypes\\.idbObjectStore|IndexedDbTypes\\.idbIndex" src tests
```

Expected: no references remain outside same-type alias definitions that are still intentionally bridging compatibility.

- [ ] **Step 2: Remove unused type aliases**

Remove aliases from `DomTypes.res` or `*Types.res` only when `rg` proves no source references remain.

Example removal:

```rescript
type canvasRenderingContext2D = private {}
```

Do not remove option records, init dictionaries, event payload records, or enums in this task.

- [ ] **Step 3: Run method-style and package checks**

Run:

```bash
node tests/unmonorepo/method-style.test.mjs
npm test
```

Expected: all commands PASS.

- [ ] **Step 4: Commit dead alias cleanup**

```bash
git add src/DOMExtended/DomTypes.res src tests/unmonorepo/method-style.test.mjs
git commit -m "Remove migrated type-bucket receiver aliases"
```

---

### Task 8: Final Enforcement and Full Feature Sweep

**Files:**

- Modify: `tests/unmonorepo/method-style.test.mjs`

- [ ] **Step 1: Remove the transition allowlist**

In `tests/unmonorepo/method-style.test.mjs`, replace the allowlist test with strict enforcement:

```js
test("keeps public method receivers on local public owner types", () => {
  const audit = auditMethodStyle();
  const typeBucketReceivers = audit.files
    .filter((entry) =>
      entry.receiverBuckets.includes("dom-types") ||
      entry.receiverBuckets.includes("feature-types")
    )
    .map((entry) => entry.path);

  assert.deepEqual(typeBucketReceivers, []);
});
```

- [ ] **Step 2: Run the method-style test**

Run:

```bash
node tests/unmonorepo/method-style.test.mjs
```

Expected: PASS with no `DomTypes.*` or `*Types.*` method receivers remaining.

- [ ] **Step 3: Run the per-feature build sweep**

Run:

```bash
node -e 'const {spawnSync}=require("node:child_process"); const c=require("./rescript.json"); for (const feature of Object.keys(c.features)) { spawnSync("node_modules/.bin/rescript", ["clean"], {encoding:"utf8"}); const result=spawnSync("node_modules/.bin/rescript", ["build", "--features", feature, "--prod"], {encoding:"utf8"}); const parsed=(result.stdout.match(/Parsed .*source files/)||[""])[0]; const compiled=(result.stdout.match(/Compiled .*modules/)||[""])[0]; if (result.status !== 0) { console.error(`FAILED ${feature}`); console.error(result.stdout); console.error(result.stderr); process.exit(result.status ?? 1); } console.log(`${feature}: ${parsed}; ${compiled}`); }'
```

Expected: every public feature group builds successfully.

- [ ] **Step 4: Run final package tests**

Run:

```bash
npm test
node tests/unmonorepo/feature-spec.test.mjs
node tests/unmonorepo/method-style.test.mjs
```

Expected: all commands PASS.

- [ ] **Step 5: Commit final enforcement**

```bash
git add tests/unmonorepo/method-style.test.mjs
git commit -m "Enforce public method receiver ownership"
```

## Self-Review

Spec coverage:

- The plan keeps `@send` and pipeable functions as the method style.
- The plan explicitly avoids object types with callable method fields.
- The plan moves receiver ownership toward public modules with local `type t`.
- The plan keeps `Impl` for true shared/inherited method sets.
- The plan provides an incremental test-backed path rather than a repo-wide risky rewrite.

Placeholder scan:

- No task uses placeholder markers or unspecified follow-up work.
- Each code-changing task names exact files and commands.
- Large repeated migrations use an explicit per-feature loop after pilot migrations establish the pattern.

Type consistency:

- Public receiver aliases use the same-type pattern already used elsewhere in this branch:

```rescript
type t = SomeTypes.someObject = private {...SomeTypes.someObject}
```

- Direct method receivers use `t`.
- Shared inherited method receivers use `T.t` inside `module Impl`.
