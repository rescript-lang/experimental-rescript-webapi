# DOM Event Base Types Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement follow-up tasks task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Make `DOM.event` and `Event.t` same-type aliases over a shared hidden base owner, with `DOM.event` fully opaque and event fields exposed through `Event` getters.

**Architecture:** Internal `Base__*` modules own canonical shared event object/interface types and are never public. `DOM` and event leaf modules are sibling public surfaces over those shared internal owners; neither aliases through the other. `WebAPI.EventTypes` is the narrow shared feature for canonical event base owners, with `EventType` as its only public module. Some internal listener/init/abort helper records still live in `src/Event/EventTypes.res`; moving or splitting those helpers is a follow-up boundary cleanup.

**Tech Stack:** ReScript source modules, `rescript.json` feature-gated sources, compile-only ReScript tests, package build/test/format checks.

---

## Current Status

The event base-type slice described by this plan has been implemented in this branch.

Completed:

- [x] Added `src/EventTypes/EventType.res` as the public event type variant module.
- [x] Added `src/EventTypes/Base__Event.res` as the hidden owner for `DOM.event` and `Event.t`.
- [x] Added `src/EventTypes/Base__EventTarget.res` as the hidden owner for `DOM.eventTarget`, `Event.eventTarget`, and `EventTarget.t`.
- [x] Added the `WebAPI.EventTypes` feature/source entry with public modules set to `["EventType"]`.
- [x] Kept `Base__Event`, `Base__EventTarget`, and `EventTypes` internal.
- [x] Updated `DOM.event` to be fully opaque.
- [x] Moved event property access to getters in `Event.res`.
- [x] Updated `EventTarget.res` APIs to use `EventType.t`, `Event.t`, and the public event listener/options aliases from `Event.res`.
- [x] Updated `Document.createEvent` to return `DOM.event`.
- [x] Updated `DomGlobal` event APIs to use `EventType.t` and internal listener/options shapes without referencing public `Event` or `EventTarget` modules.
- [x] Removed the redundant `src/Base/BaseEvent.res` wrapper.
- [x] Added compile-only same-type alias coverage for `DOM.event`, `Event.t`, `DOM.eventTarget`, `Event.eventTarget`, `EventTarget.t`, and `EventType.t`.
- [x] Removed the event-specific unmonorepo assertions from `tests/unmonorepo/release-files.test.mjs`.

Not completed in this slice:

- [ ] Minimize `DOM.res` to only the lightweight base type surface.
- [ ] Remove or split `DomTypes.res`.
- [ ] Remove all non-event `DOM.*` behavior/type declarations from `DOM.res`.
- [ ] Finish the repo-wide `@editor.completeFrom` audit.
- [ ] Decide whether event listener/init/options records should remain in internal `EventTypes.res` or move to smaller hidden owner modules.
- [ ] Run a rescript-react compatibility check against the new base type surface.

## Current Feature Shape

`WebAPI.EventTypes` exists as a shared feature grouping:

```json
{
  "dir": "src/EventTypes",
  "subdirs": true,
  "feature": "WebAPI.EventTypes",
  "public": ["EventType"]
}
```

Current event-related feature dependencies:

```json
{
  "WebAPI.EventTypes": [],
  "WebAPI.Event": ["WebAPI.Base", "WebAPI.EventTypes"],
  "WebAPI.DOM": ["WebAPI.Base", "...", "WebAPI.EventTypes", "..."]
}
```

Important interpretation:

- `WebAPI.DOM` and `WebAPI.Event` both depend on `WebAPI.EventTypes`.
- `WebAPI.DOM` and `WebAPI.Event` do not depend on each other.
- `WebAPI.Event` still depends on `WebAPI.Base` for other existing APIs. Event base aliases no longer flow through `WebAPI.Base`.
- `WebAPI.DOM` is not yet a minimal feature. It still has broader dependencies because the full DOM cleanup is outside this event-focused slice.
- `src/DOM` does not reference public `Event.*` or `EventTarget.*` modules for the event aliases.
- `src/DOM/DomGlobal.res` still references internal listener/options helper shapes from `src/Event/EventTypes.res`. That file is not public, but its placement is a follow-up if the shared helper boundary needs to move fully under `src/EventTypes`.

## Current Type Ownership

Shared internal owners:

```rescript
// src/EventTypes/Base__Event.res
type t = private {}

// src/EventTypes/Base__EventTarget.res
type t = private {}
```

Public sibling aliases:

```rescript
// src/DOM/DOM.res
type event = Base__Event.t = private {...Base__Event.t}
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}

// src/Event/Event.res
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
type t = Base__Event.t = private {...Base__Event.t}

// src/Event/EventTarget.res
type t = Base__EventTarget.t = private {...Base__EventTarget.t}
```

This is the desired direction:

```text
Base__Event.t
  -> DOM.event
  -> Event.t

Base__EventTarget.t
  -> DOM.eventTarget
  -> Event.eventTarget
  -> EventTarget.t
```

The arrows here mean "same internal owner exposed by public aliases", not dependency direction. `DOM` and the leaf modules are siblings over the same hidden owner.

## Current Event API Shape

`DOM.event` is opaque and does not expose record fields.

`Event.res` exposes the event behavior and property access:

```rescript
@get external type_: t => EventType.t = "type"
@get external target: t => Null.t<eventTarget> = "target"
@get external currentTarget: t => Null.t<eventTarget> = "currentTarget"
@get external eventPhase: t => int = "eventPhase"
@get external bubbles: t => bool = "bubbles"
@get external cancelable: t => bool = "cancelable"
@get external defaultPrevented: t => bool = "defaultPrevented"
@get external composed: t => bool = "composed"
@get external isTrusted: t => bool = "isTrusted"
@get external timeStamp: t => float = "timeStamp"
```

`EventTarget.res` exposes listener and dispatch APIs over the public leaf event types:

```rescript
@send
external dispatchEvent: (T.t, Event.t) => bool = "dispatchEvent"
```

`DomGlobal.res` intentionally does not reference public `Event.res` or `EventTarget.res` APIs. It uses:

- `EventType.t`
- `EventTypes.eventListener<'event>`
- `EventTypes.eventListenerOptions`
- `EventTypes.addEventListenerOptions`
- `DOM.event` for `dispatchEvent`

This preserves the public API direction for the DOM base surface. It is not the final internal helper boundary if we decide listener/options records should also live under `src/EventTypes`.

## Current Internal Helpers

`src/Event/EventTypes.res` remains internal. It currently owns helper shapes that are shared by event modules and DOM globals:

- `abortController`
- `abortSignal`
- `eventListener<'event>`
- `eventListenerOptions`
- `eventInit`
- `addEventListenerOptions`
- `extendableEvent`

This is intentional for the current slice. There is no public `EventTypes` module. The file currently lives in `src/Event`, not `src/EventTypes`, so it should be revisited if we want every shared helper used by `DOM` and `Event` to live under the `WebAPI.EventTypes` source root.

`AbortSignal.t`, `AbortController.t`, and `ExtendableEvent.t` are public leaf aliases over these internal helper shapes:

```rescript
type t = EventTypes.abortSignal = private {...EventTypes.abortSignal}
type t = EventTypes.abortController = private {...EventTypes.abortController}
type t = EventTypes.extendableEvent = private {...EventTypes.extendableEvent}
```

Future cleanup can split those helper shapes into smaller hidden owners if needed, but that is not required for the `DOM.event` same-type alias goal.

## Compile-Time Coverage

Added compile-only tests:

- `tests/DOMAPI/Event__test.res`
- `tests/DOMAPI/EventTarget__test.res`
- `tests/DOMAPI/EventType__test.res`

These verify:

- `DOM.event` can be passed where `Event.t` is expected.
- `Event.t` can be passed where `DOM.event` is expected.
- `DOM.eventTarget`, `Event.eventTarget`, and `EventTarget.t` are mutually assignable.
- `EventType.t` accepts the public variant constructors and custom event strings.

No event-specific unmonorepo assertions are currently retained in this plan or in `tests/unmonorepo/release-files.test.mjs`.

## Verification Recorded For This Slice

Passed locally after the event-base implementation:

```sh
npm run build
npm test
npm run format:check
```

Targeted feature builds were also run successfully during the implementation pass:

```sh
node_modules/.bin/rescript build --features WebAPI.DOM --prod
node_modules/.bin/rescript build --features WebAPI.Event --prod
node_modules/.bin/rescript build --features WebAPI.Base --prod
node_modules/.bin/rescript build --features WebAPI.Fetch --prod
node_modules/.bin/rescript build --features WebAPI.File --prod
node_modules/.bin/rescript build --features WebAPI.CredentialManagement --prod
node_modules/.bin/rescript build --features WebAPI.Notification --prod
node_modules/.bin/rescript build --features WebAPI.Push --prod
node_modules/.bin/rescript build --features WebAPI.Locks --prod
```

## Follow-Up Task 1: Minimize DOM And DomTypes

**Goal:** Make `DOM` the thin public base type surface and remove event-related duplication from `DomTypes`.

**Files:**

- Modify: `src/DOM/DOM.res`
- Modify: `src/DOM/DomTypes.res`
- Modify: affected leaf modules that still depend on `DomTypes`
- Modify: `rescript.json`

- [ ] **Step 1: Inventory `DomTypes` usage**

Run:

```sh
rg -n "DomTypes\\." src tests docs/content
```

Classify each hit as:

- a type that should move to a leaf module
- a type that should remain as a `DOM.*` base alias
- a transitional alias that can be deleted

- [ ] **Step 2: Remove event aliases from `DomTypes`**

After all consumers are confirmed to use `DOM.eventTarget`, `Event.eventTarget`, or `EventTarget.t`, remove:

```rescript
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
type eventType = EventType.t
```

- [ ] **Step 3: Keep `DOM.event` and `DOM.eventTarget` in `DOM.res`**

These aliases remain part of the public DOM-shaped base type surface:

```rescript
type event = Base__Event.t = private {...Base__Event.t}
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
```

- [ ] **Step 4: Rebuild**

Run:

```sh
npm run build
```

Expected: build passes.

## Follow-Up Task 2: Move Or Split Event Helper Shapes If Needed

**Goal:** Decide whether internal helper records in `src/Event/EventTypes.res` should stay there, move under `src/EventTypes`, or split into smaller hidden owners.

**Files:**

- Modify: `src/Event/EventTypes.res`
- Modify: `src/Event/AbortSignal.res`
- Modify: `src/Event/AbortController.res`
- Modify: `src/Event/ExtendableEvent.res`
- Modify: `src/Event/Event.res`
- Modify: `src/DOM/DomGlobal.res`

- [ ] **Step 1: Keep current shape unless it causes a concrete dependency problem**

Current internal helper ownership is acceptable for this branch because `EventTypes.res` is not public. If we need `DOM` to avoid any source-level reliance on the `src/Event` folder, move the shared listener/options/abort helper shapes under `src/EventTypes` or split them into hidden `Base__*` owners.

- [ ] **Step 2: If splitting, use hidden same-type owners**

Use the same private-spread pattern:

```rescript
type t = Base__AbortSignal.t = private {...Base__AbortSignal.t}
```

Do not expose `Base__AbortSignal`, `Base__AbortController`, or any new `*Types` module publicly.

- [ ] **Step 3: Rebuild**

Run:

```sh
npm run build
```

Expected: build passes.

## Follow-Up Task 3: Audit `@editor.completeFrom`

**Goal:** Remove stale completion annotations that point through `DOM.*` or non-public modules.

**Files:**

- Modify: touched `.res` files containing invalid or stale `@editor.completeFrom` annotations

- [ ] **Step 1: Find stale annotations**

Run:

```sh
rg -n "@editor\\.completeFrom\\(DOM\\.|@editor\\.completeFrom\\(Base|@editor\\.completeFrom\\([A-Za-z0-9_]+\\.[A-Za-z0-9_]" src
```

- [ ] **Step 2: Point public leaf aliases at public leaf modules**

Use this shape when the completion owner is public and does not create a bad feature dependency:

```rescript
@editor.completeFrom(CSSStyleDeclaration)
type t = Base__CSSStyleDeclaration.t = private {...Base__CSSStyleDeclaration.t}
```

Do not add `@editor.completeFrom(Event)` to `DOM.event` unless it can be proven not to create a `WebAPI.DOM -> WebAPI.Event` dependency.

- [ ] **Step 3: Rebuild**

Run:

```sh
npm run build
```

Expected: build passes.

## Follow-Up Task 4: Rescript-React Compatibility Check

**Goal:** Verify the eventual base surface is thin enough for rescript-react without pulling in the larger DOM API.

**Target types:**

- `DOM.element`
- `DOM.window`
- `DOM.history`
- `DOM.eventTarget`
- `DOM.touchList`
- `DOM.dataTransfer`

- [ ] **Step 1: Create or use a local compatibility fixture**

The fixture should depend on the smallest intended WebAPI feature set and compile representative rescript-react DOM/event usage.

- [ ] **Step 2: Confirm event assignability**

Include checks equivalent to:

```rescript
let acceptsDOMEvent = (_event: DOM.event) => ()
let acceptsEvent = (_event: Event.t) => ()
let acceptsDOMEventTarget = (_target: DOM.eventTarget) => ()
let acceptsEventTarget = (_target: EventTarget.t) => ()
```

- [ ] **Step 3: Rebuild the fixture**

Expected: the fixture compiles without requiring unrelated DOM leaf behavior.

## Review Checklist

- [x] `DOM` is a public DOM-shaped alias surface, not the shared type owner.
- [x] `WebAPI.EventTypes` owns shared internal event `Base__*` types.
- [x] `WebAPI.EventTypes` exposes `EventType` as its only public module.
- [x] `WebAPI.EventTypes` does not expose a public `EventTypes` module.
- [x] `WebAPI.DOM` and `WebAPI.Event` both depend on `WebAPI.EventTypes`.
- [x] `WebAPI.DOM` and `WebAPI.Event` do not depend on each other.
- [x] `DOM.event` is fully opaque.
- [x] `Event.eventTarget` and `DOM.eventTarget` are same-type aliases over `Base__EventTarget.t`.
- [x] `Event.t` and `DOM.event` are same-type aliases over `Base__Event.t`.
- [x] Event property access exists through `Event` getters.
- [x] `EventType.t` owns public event type variants.
- [x] Event-specific unmonorepo assertions are not part of this branch.
- [ ] `DOM.res` is minimal.
- [ ] `DomTypes` has no remaining role.
- [ ] All stale `@editor.completeFrom` annotations have been audited.
