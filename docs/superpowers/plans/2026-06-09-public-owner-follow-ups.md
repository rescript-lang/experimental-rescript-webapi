# Public Owner Follow-Ups Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Finish the public-owner cleanup started in PR #270 by removing the remaining transitional receiver/type buckets, adding compatibility coverage for React-oriented consumers, and enforcing the method receiver audit.

**Architecture:** Public leaf modules should own their object receiver `type t` and expose pipeable APIs directly. Shared structural owners should be hidden base modules or same-feature helper types, while `*Types.res` files keep dictionaries, enums, callback shapes, and option records. Compatibility coverage should prove the thin `WebAPI.DOM` surface still works for consumers that need DOM/event assignability without pulling broad feature groups.

**Tech Stack:** ReScript source modules, `rescript.json` feature selection, Node test runner, compile-only ReScript tests, `scripts/audit-method-style.mjs`.

---

## Current State

- `src/DOMExtended` has been removed.
- `tests/unmonorepo/feature-spec.test.mjs` covers the removed DOMExtended layout.
- `scripts/audit-method-style.mjs` and `tests/unmonorepo/method-style.test.mjs` enforce object-shape and receiver-style guardrails.
- `src/DOMTypes/DOM.res` remains as a transitional DOM type bucket.
- `tests/unmonorepo/method-style.test.mjs` still has a non-empty `remainingTransitionTypeBucketReceivers` allowlist.
- No dedicated rescript-react compatibility fixture exists in this repository.

## File Structure

- Modify: `src/DOMTypes/DOM.res` to remove aliases only after each owner has moved.
- Modify: public leaf modules in `src/<Feature>/*.res` when moving receiver ownership to local `type t`.
- Modify: `tests/unmonorepo/method-style.test.mjs` to shrink and eventually remove the transition allowlist.
- Add or modify: compile-only tests under `tests/DOMAPI`, `tests/GlobalSingletonAPI`, or a new focused fixture under `tests/Compatibility`.
- Modify: `rescript.json` only when source ownership changes require explicit feature dependencies.

---

### Task 1: Add Compatibility Coverage For Thin DOM Consumers

**Files:**
- Add: `tests/Compatibility/ReactDomShape__test.res`
- Modify: `rescript.json`

- [ ] **Step 1: Add a compile-only compatibility test**

Create `tests/Compatibility/ReactDomShape__test.res`:

```rescript
let event: DOM.event = Obj.magic()
let eventTarget: DOM.eventTarget = Obj.magic()
let element: DOM.element = Obj.magic()

let acceptsEvent = (_event: Event.t) => ()
let acceptsDomEvent = (_event: DOM.event) => ()

let acceptsEventTarget = (_target: EventTarget.t) => ()
let acceptsDomEventTarget = (_target: DOM.eventTarget) => ()

let acceptsElement = (_element: Element.t) => ()
let acceptsDomElement = (_element: DOM.element) => ()

event->acceptsEvent
event->acceptsDomEvent

eventTarget->acceptsEventTarget
eventTarget->acceptsDomEventTarget

element->acceptsElement
element->acceptsDomElement
```

- [ ] **Step 2: Register the compatibility test directory**

In `rescript.json`, add the new test directory to the existing test source list using the same shape as the other `tests/*` entries:

```json
{ "dir": "tests/Compatibility", "type": "dev" }
```

- [ ] **Step 3: Run the focused build**

Run:

```sh
node_modules/.bin/rescript build --features WebAPI.DOM --prod
npm test
```

Expected: both commands pass, and the compatibility test compiles.

---

### Task 2: Remove Remaining `DOMTypes` Object Aliases By Owner

**Files:**
- Modify: `src/DOMTypes/DOM.res`
- Modify: affected public owner modules in `src/*/*.res`
- Modify: `rescript.json`
- Test: affected compile-only tests under `tests/DOMAPI`

- [ ] **Step 1: Inventory current `DOMTypes` consumers**

Run:

```sh
rg -n "DOMTypes\\." src tests
```

Expected: output lists every remaining consumer that still depends on `src/DOMTypes/DOM.res`.

- [ ] **Step 2: Pick one owner group and add a local public receiver**

For each object type still owned by `DOMTypes`, move it to its public leaf module by adding a local `type t` or a same-type alias over the appropriate hidden owner.

Example pattern for a public leaf that still uses `DOMTypes.range`:

```rescript
type t = DOMTypes.range = private {...DOMTypes.range}
```

Example pattern when introducing a hidden base owner:

```rescript
type t = Base__Range.t = private {...Base__Range.t}
```

- [ ] **Step 3: Replace public API receiver positions**

Within the selected public leaf module, replace `DOMTypes.<name>` receiver positions with `t`.

Example:

```rescript
@send
external collapse: (t, bool) => unit = "collapse"
```

- [ ] **Step 4: Remove the alias from `DOMTypes` after source usage is gone**

Before deleting any alias, prove no source or test references remain:

```sh
rg -n "DOMTypes\\.<name>" src tests
```

Expected: no output for the selected alias.

- [ ] **Step 5: Run focused feature verification**

Run the affected public feature build. Example for `Range`:

```sh
node_modules/.bin/rescript build --features WebAPI.Range --prod
```

Expected: the feature builds successfully without relying on the removed `DOMTypes` alias.

- [ ] **Step 6: Run package checks**

Run:

```sh
npm test
node tests/unmonorepo/method-style.test.mjs
```

Expected: both commands pass.

- [ ] **Step 7: Repeat until `DOMTypes` has no object ownership role**

Run:

```sh
rg -n "type [a-zA-Z0-9]+ = private \\{}|@editor.completeFrom" src/DOMTypes/DOM.res
```

Expected: no transitional object-owner aliases remain. Enum, dictionary, callback, and option shapes may remain only if they are not better owned by a feature-specific `*Types.res` file.

---

### Task 3: Finish Public Method Receiver Cleanup

**Files:**
- Modify: `tests/unmonorepo/method-style.test.mjs`
- Modify: public method modules currently listed in `remainingTransitionTypeBucketReceivers`
- Modify: relevant `*Types.res` files after aliases become unused

- [ ] **Step 1: Inspect the current transition allowlist**

Run:

```sh
sed -n '1,90p' tests/unmonorepo/method-style.test.mjs
```

Expected: `remainingTransitionTypeBucketReceivers` lists the only public modules still allowed to bind methods through feature type buckets.

- [ ] **Step 2: Pick one feature group from the allowlist**

Work one feature group at a time, such as `EncryptedMediaExtensions`, `File`, `IndexedDB`, `ServiceWorker`, `UIEvents`, or `WebAudio`.

For every module in that feature group with `@send` methods, add or normalize a public receiver:

```rescript
type t = FeatureTypes.featureObject = private {...FeatureTypes.featureObject}
```

- [ ] **Step 3: Replace method receivers with local `t`**

Change `@send` signatures from feature-bucket receivers to local receivers.

Before:

```rescript
@send
external close: FeatureTypes.featureObject => unit = "close"
```

After:

```rescript
@send
external close: t => unit = "close"
```

- [ ] **Step 4: Shrink the allowlist**

Remove the migrated file paths from `remainingTransitionTypeBucketReceivers` in `tests/unmonorepo/method-style.test.mjs`.

- [ ] **Step 5: Run the method-style audit**

Run:

```sh
node tests/unmonorepo/method-style.test.mjs
```

Expected: the audit passes with the smaller allowlist.

- [ ] **Step 6: Run the affected feature build**

Run the matching feature build for the migrated group. Example:

```sh
node_modules/.bin/rescript build --features WebAPI.WebAudio --prod
```

Expected: the feature builds successfully.

- [ ] **Step 7: Repeat until the allowlist is empty**

When no public method module uses a type-bucket receiver, replace the allowlist assertion with strict enforcement:

```js
assert.deepEqual(currentTypeBucketReceivers, []);
```

Run:

```sh
node tests/unmonorepo/method-style.test.mjs
npm test
```

Expected: both commands pass with no transition allowlist.

---

### Task 4: Final Full Verification

**Files:**
- Modify only files changed by Tasks 1-3.

- [ ] **Step 1: Run package verification**

Run:

```sh
npm run build
npm test
npm run format:check
```

Expected: all commands pass.

- [ ] **Step 2: Run key feature builds**

Run:

```sh
node_modules/.bin/rescript build --features WebAPI.DOM --prod
node_modules/.bin/rescript build --features WebAPI.Event --prod
node_modules/.bin/rescript build --features WebAPI.HTML --prod
node_modules/.bin/rescript build --features WebAPI.Window --prod
node_modules/.bin/rescript build --features WebAPI.WebAudio --prod
```

Expected: all feature builds pass.

- [ ] **Step 3: Confirm stale plan files are not restored**

Run:

```sh
find docs/superpowers/plans -maxdepth 1 -type f -print
```

Expected: this follow-up plan is the only active plan file unless new work has intentionally added another one.

## Self-Review

- [ ] The compatibility task covers DOM event, event target, and element assignability.
- [ ] The `DOMTypes` cleanup task removes aliases only after source usage is gone.
- [ ] The method receiver cleanup task works from the current allowlist instead of stale DOMExtended paths.
- [ ] Final verification includes package checks and representative feature builds.
