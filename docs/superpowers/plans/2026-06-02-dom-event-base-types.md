# DOM Event Base Types Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Make `DOM.event` and `Event.t` same-type aliases over a shared hidden base owner, with `DOM.event` fully opaque and event fields exposed through `Event` getters.

**Architecture:** Internal `Base__*` modules own canonical shared object/interface types and are never public. Lightweight public variant modules, such as `EventType`, can own their type directly when no hidden record shape is needed. `DOM.res` is a small public compatibility/type surface for shared Web API object types. Leaf modules such as `Event`, `EventTarget`, `Element`, and future split DOM modules expose same-type aliases to the same internal owner and provide methods/getters without depending on `DOM` aliases. `WebAPI.DOM` and `WebAPI.Event` both depend on a narrow shared event-type feature, `WebAPI.EventTypes`; neither depends on the other or on the full `WebAPI.Base` feature for event types.

**Tech Stack:** ReScript source modules, `rescript.json` feature-gated sources, compile-only ReScript tests, Node test runner for feature/build assertions.

---

## Scope

This plan covers the shared type architecture and the first detailed migration slice: `DOM.event`.

The broader PR goals remain:

- Consumers can select only the WebAPI features they use.
- Leaf APIs keep direct/global access improvements such as `Crypto.randomUUID()`.
- `DOM` becomes a thin public type surface for external consumers such as rescript-react.
- Larger DOM API behavior moves into specific leaf modules and features.
- `Base__*`, `*Types`, and `*Base` implementation modules are not public.
- Shared types are defined once and exposed through same-type aliases, not copied abstract types.

## Target Dependency Direction

Use this flow:

```text
internal Base__* owner
  -> public DOM alias
  -> public leaf module alias
```

`DOM` and the leaf module are siblings over the same internal type owner. They should not alias through each other.

Example:

```rescript
// shared internal type owner
type t = private {id: string}

// src/DOM/Element.res
type t = Base__Element.t = private {...Base__Element.t}

// src/DOM/DOM.res
type element = Base__Element.t = private {...Base__Element.t}
```

The same rule applies to `DOM.event`:

```rescript
// src/EventTypes/Base__Event.res
type t = private {}

// src/Event/Event.res
type t = Base__Event.t = private {...Base__Event.t}

// src/DOM/DOM.res
type event = Base__Event.t = private {...Base__Event.t}
```

## Feature Shape

`WebAPI.EventTypes` is the shared event-type feature. It contains internal event-related `Base__*` owners and any lightweight public type-only modules that must be usable by both `DOM` and `Event`.

`WebAPI.EventTypes` is a feature/source grouping, not a public `EventTypes` module. `EventTypes.res` and `Base__*.res` implementation modules must remain private to the package.

`WebAPI.DOM` is a thin public type surface for consumers that need DOM-shaped aliases such as `DOM.element` or `DOM.event`.

`WebAPI.Event` is the event behavior feature. It exposes `Event`, `Event.eventTarget`, `EventTarget`, and related methods/getters.

Feature dependencies should be:

```text
WebAPI.DOM -> WebAPI.EventTypes
WebAPI.Event -> WebAPI.EventTypes
```

Feature dependencies must not be:

```text
WebAPI.Event -> WebAPI.DOM
WebAPI.DOM -> WebAPI.Event
```

Public modules in `WebAPI.DOM` should be intentionally small:

- `DOM`

The first target public list for `WebAPI.DOM` after this plan is complete is exactly:

```json
["DOM"]
```

Public modules in `WebAPI.EventTypes` should also be intentionally small. The first target public module for this plan is:

```json
["EventType"]
```

If `Element` or `Document` need to stay public in `WebAPI.DOM`, that is a separate review decision and should be captured before implementation starts. The default for this plan is that method modules stay in their leaf features and use the shared internal owners.

Implementation modules must not be public:

- `Base__Event`
- `Base__EventTarget`
- `EventTypes`
- `DomTypes`
- any future `*Types` or `*Base` helper

## Task 1: Add Lightweight EventType Ownership

**Files:**

- Create: `src/EventTypes/EventType.res`
- Modify: `rescript.json`
- Test: `tests/DOMAPI/EventType__test.res`

- [ ] **Step 1: Create public EventType module**

Add `src/EventTypes/EventType.res`:

```rescript
@@warning("-30")

@unboxed
type t =
  | @as("abort") Abort
  | @as("activate") Activate
  | @as("auxclick") Auxclick
  | @as("beforeinput") Beforeinput
  | @as("beforetoggle") Beforetoggle
  | @as("blur") Blur
  | @as("cancel") Cancel
  | @as("canplay") Canplay
  | @as("canplaythrough") Canplaythrough
  | @as("change") Change
  | @as("click") Click
  | @as("close") Close
  | @as("contextlost") Contextlost
  | @as("contextmenu") Contextmenu
  | @as("contextrestored") Contextrestored
  | @as("copy") Copy
  | @as("cuechange") Cuechange
  | @as("cut") Cut
  | @as("dblclick") Dblclick
  | @as("DOMContentLoaded") DOMContentLoaded
  | @as("drag") Drag
  | @as("dragend") Dragend
  | @as("dragenter") Dragenter
  | @as("dragleave") Dragleave
  | @as("dragover") Dragover
  | @as("dragstart") Dragstart
  | @as("drop") Drop
  | @as("durationchange") Durationchange
  | @as("emptied") Emptied
  | @as("ended") Ended
  | @as("error") Error
  | @as("focus") Focus
  | @as("formdata") Formdata
  | @as("input") Input
  | @as("install") Install
  | @as("invalid") Invalid
  | @as("keydown") Keydown
  | @as("keypress") Keypress
  | @as("keyup") Keyup
  | @as("load") Load
  | @as("loadeddata") Loadeddata
  | @as("loadedmetadata") Loadedmetadata
  | @as("loadstart") Loadstart
  | @as("message") Message
  | @as("messageerror") MessageError
  | @as("mousedown") Mousedown
  | @as("mouseenter") Mouseenter
  | @as("mouseleave") Mouseleave
  | @as("mousemove") Mousemove
  | @as("mouseout") Mouseout
  | @as("mouseover") Mouseover
  | @as("mouseup") Mouseup
  | @as("notificationclick") NotificationClick
  | @as("paste") Paste
  | @as("pause") Pause
  | @as("play") Play
  | @as("playing") Playing
  | @as("progress") Progress
  | @as("ratechange") Ratechange
  | @as("reset") Reset
  | @as("resize") Resize
  | @as("scroll") Scroll
  | @as("scrollend") Scrollend
  | @as("securitypolicyviolation") Securitypolicyviolation
  | @as("seeked") Seeked
  | @as("seeking") Seeking
  | @as("select") Select
  | @as("slotchange") Slotchange
  | @as("stalled") Stalled
  | @as("submit") Submit
  | @as("suspend") Suspend
  | @as("timeupdate") Timeupdate
  | @as("toggle") Toggle
  | @as("volumechange") Volumechange
  | @as("waiting") Waiting
  | @as("webkitanimationend") Webkitanimationend
  | @as("webkitanimationiteration") Webkitanimationiteration
  | @as("webkitanimationstart") Webkitanimationstart
  | @as("webkittransitionend") Webkittransitionend
  | @as("wheel") Wheel
  | @as("animationstart") Animationstart
  | @as("animationiteration") Animationiteration
  | @as("animationend") Animationend
  | @as("animationcancel") Animationcancel
  | @as("transitionrun") Transitionrun
  | @as("transitionstart") Transitionstart
  | @as("transitionend") Transitionend
  | @as("transitioncancel") Transitioncancel
  | @as("pointerover") Pointerover
  | @as("pointerenter") Pointerenter
  | @as("pointerdown") Pointerdown
  | @as("pointermove") Pointermove
  | @as("pointerup") Pointerup
  | @as("pointercancel") Pointercancel
  | @as("pointerout") Pointerout
  | @as("pointerleave") Pointerleave
  | @as("push") Push
  | @as("gotpointercapture") Gotpointercapture
  | @as("lostpointercapture") Lostpointercapture
  | @as("selectstart") Selectstart
  | @as("selectionchange") Selectionchange
  | @as("touchstart") Touchstart
  | @as("touchend") Touchend
  | @as("touchmove") Touchmove
  | @as("touchcancel") Touchcancel
  | Custom(string)
```

- [ ] **Step 2: Publish `EventType` through the `WebAPI.EventTypes` feature**

Add or modify the `src/EventTypes` source entry in `rescript.json`:

```json
{
  "dir": "src/EventTypes",
  "subdirs": true,
  "feature": "WebAPI.EventTypes",
  "public": ["EventType"]
}
```

Do not expose an `EventTypes` module from this feature.

- [ ] **Step 3: Add EventType compile test**

Add `tests/DOMAPI/EventType__test.res`:

```rescript
let click: EventType.t = Click
let custom: EventType.t = Custom("my-event")

let _ = (click, custom)
```

- [ ] **Step 4: Run build**

Run:

```sh
npm run build
```

Expected: build succeeds.

## Task 2: Move EventTarget To The Shared Event Type Feature

**Files:**

- Create: `src/EventTypes/Base__EventTarget.res`
- Modify or delete: `src/Base/BaseEvent.res`
- Modify: `src/Event/EventTypes.res`
- Modify: `src/Event/Event.res`
- Modify: `src/Event/EventTarget.res`
- Modify: `src/DOM/DOM.res`
- Test: `tests/DOMAPI/EventTarget__test.res`

- [ ] **Step 1: Create internal EventTarget owner**

Add `src/EventTypes/Base__EventTarget.res`:

```rescript
/**
EventTarget is a Web API interface implemented by objects that can receive events and may have listeners for them.
[See EventTarget on MDN](https://developer.mozilla.org/docs/Web/API/EventTarget)
*/
type t = private {}
```

Use an empty private record because `eventTarget` is opaque but still needs public aliases to use the same-type private-spread pattern.

- [ ] **Step 2: Add public `DOM.eventTarget` alias**

In `src/DOM/DOM.res`, keep the module minimal and add:

```rescript
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
```

If `DOM.res` still contains unrelated large declarations, move only the event-target alias in this task and leave the broad cleanup for Task 7.

- [ ] **Step 3: Add public `Event.eventTarget` alias**

In `src/Event/Event.res`, add:

```rescript
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
```

This gives event consumers a type connected to `Event` while preserving the same internal owner as `DOM.eventTarget`.

- [ ] **Step 4: Update EventTarget method-module type**

In `src/Event/EventTarget.res`, add or replace the public type:

```rescript
type t = Base__EventTarget.t = private {...Base__EventTarget.t}
```

Then update `make` and `Impl.asEventTarget`:

```rescript
@new
external make: unit => t = "EventTarget"

module Impl = (
  T: {
    type t
  },
) => {
  external asEventTarget: T.t => t = "%identity"
}
```

Keep the existing methods in `Impl`, but use `EventType.t` and `Event.t` once Task 4 introduces `Event.t`.

- [ ] **Step 5: Keep old internal references compiling temporarily**

If existing code still refers to `EventTypes.eventTarget`, keep this temporary alias in `src/Event/EventTypes.res`:

```rescript
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
```

This alias is internal and should be deleted after all references move to `Event.eventTarget`, `EventTarget.t`, or `DOM.eventTarget`.

- [ ] **Step 6: Add EventTarget same-type test**

Add `tests/DOMAPI/EventTarget__test.res`:

```rescript
external target: DOM.eventTarget = "target"

let asEventAlias = (target: DOM.eventTarget): Event.eventTarget => target
let asLeaf = (target: DOM.eventTarget): EventTarget.t => target
let asDOM = (target: EventTarget.t): DOM.eventTarget => target

let _ = (target->asEventAlias, target->asLeaf, target->asDOM)
```

- [ ] **Step 7: Run build**

Run:

```sh
npm run build
```

Expected: build succeeds.

## Task 3: Add Opaque DOM.event Internal Owner

**Files:**

- Create: `src/EventTypes/Base__Event.res`
- Modify: `src/DOM/DOM.res`
- Modify: `src/Event/EventTypes.res`
- Test: `tests/DOMAPI/Event__test.res`

- [ ] **Step 1: Create internal opaque event owner**

Add `src/EventTypes/Base__Event.res`:

```rescript
/**
An event which takes place in the DOM.
[See Event on MDN](https://developer.mozilla.org/docs/Web/API/Event)
*/
type t = private {}
```

The type is intentionally fully opaque. Keep the internal owner as an empty private record so aliases can use `private {...Base__Event.t}` without exposing event fields.

- [ ] **Step 2: Add public `DOM.event` alias**

In `src/DOM/DOM.res`, add:

```rescript
type event = Base__Event.t = private {...Base__Event.t}
```

- [ ] **Step 3: Keep old internal references compiling temporarily**

In `src/Event/EventTypes.res`, replace the record definition of `event` with:

```rescript
type event = Base__Event.t = private {...Base__Event.t}
```

This is temporary internal glue. `EventTypes.event` should disappear after references migrate.

- [ ] **Step 4: Add DOM event same-type test**

Add `tests/DOMAPI/Event__test.res`:

```rescript
external event: DOM.event = "event"

let asLeaf = (event: DOM.event): Event.t => event
let asDOM = (event: Event.t): DOM.event => event

let _ = (event->asLeaf, event->asDOM)
```

This test will not compile until Task 4 exposes `Event.t`; add it with Task 4 if the repo does not support temporarily failing tests.

## Task 4: Move Event Record Fields To Event Getters

**Files:**

- Modify: `src/Event/Event.res`
- Modify: `src/Event/EventTarget.res`
- Modify: `src/Event/ExtendableEvent.res`
- Modify: all modules that call `Event.Impl` or `EventTarget.Impl`
- Test: `tests/DOMAPI/Event__test.res`

- [ ] **Step 1: Expose opaque `Event.t`**

At the top of `src/Event/Event.res`, add:

```rescript
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}

type t = Base__Event.t = private {...Base__Event.t}
```

- [ ] **Step 2: Move listener and init types into Event.res**

Add these public event support types to `src/Event/Event.res`:

```rescript
type eventListener<'event> = 'event => unit

type eventListenerOptions = {mutable capture?: bool}

type eventInit = {
  mutable bubbles?: bool,
  mutable cancelable?: bool,
  mutable composed?: bool,
}

type addEventListenerOptions = {
  ...eventListenerOptions,
  mutable passive?: bool,
  mutable once?: bool,
  mutable signal?: AbortSignal.t,
}
```

If `AbortSignal.t` is not available yet at this point in the migration, keep the existing internal `EventTypes.abortSignal` reference temporarily and replace it with `AbortSignal.t` when `AbortSignal.res` exposes `type t`.

- [ ] **Step 3: Update constructor**

Replace:

```rescript
@new
external make: (~type_: string, ~eventInitDict: EventTypes.eventInit=?) => EventTypes.event =
  "Event"
```

with:

```rescript
@new
external make: (~type_: string, ~eventInitDict: eventInit=?) => t = "Event"
```

- [ ] **Step 4: Add property getters**

Add getters to `src/Event/Event.res`:

```rescript
@get
external type_: t => EventType.t = "type"

@get
external target: t => Null.t<eventTarget> = "target"

@get
external currentTarget: t => Null.t<eventTarget> = "currentTarget"

@get
external eventPhase: t => int = "eventPhase"

@get
external bubbles: t => bool = "bubbles"

@get
external cancelable: t => bool = "cancelable"

@get
external defaultPrevented: t => bool = "defaultPrevented"

@get
external composed: t => bool = "composed"

@get
external isTrusted: t => bool = "isTrusted"

@get
external timeStamp: t => float = "timeStamp"
```

- [ ] **Step 5: Update Event.Impl to return the leaf type**

Replace:

```rescript
external asEvent: T.t => EventTypes.event = "%identity"
@send external composedPath: T.t => array<EventTypes.eventTarget> = "composedPath"
```

with:

```rescript
external asEvent: T.t => t = "%identity"
@send external composedPath: T.t => array<eventTarget> = "composedPath"
```

- [ ] **Step 6: Update include**

Replace:

```rescript
include Impl({type t = EventTypes.event})
```

with:

```rescript
include Impl({type t = t})
```

- [ ] **Step 7: Update EventTarget dispatch signatures**

In `src/Event/EventTarget.res`, replace `EventTypes.eventType`, `EventTypes.eventListener`, `EventTypes.addEventListenerOptions`, `EventTypes.eventListenerOptions`, and `EventTypes.event` with `EventType.t`, `Event.eventListener`, `Event.addEventListenerOptions`, `Event.eventListenerOptions`, and `Event.t`:

```rescript
@send
external dispatchEvent: (T.t, Event.t) => bool = "dispatchEvent"
```

- [ ] **Step 8: Run targeted search**

Run:

```sh
rg -n "EventTypes\\.event|EventTypes\\.eventTarget|EventTypes\\.eventType" src tests
```

Expected: remaining hits are only temporary aliases or modules that will be migrated in Task 5.

- [ ] **Step 9: Run build**

Run:

```sh
npm run build
```

Expected: build succeeds.

## Task 5: Migrate Event Subtypes And Consumers

**Files:**

- Modify: `src/Event/ExtendableEvent.res`
- Modify: `src/UIEvents/UiEventsTypes.res`
- Modify: `src/WebSockets/WebSocketsTypes.res`
- Modify: `src/WebSockets/MessageEvent.res`
- Modify: `src/WebStorage/WebStorageTypes.res`
- Modify: `src/WebAudio/WebAudioTypes.res`
- Modify: `src/DOM/Document.res`
- Modify: `src/DOM/DomGlobal.res`
- Test: existing event-related tests

- [ ] **Step 1: Change event subtype spreading**

Where a subtype currently spreads `EventTypes.event`, replace it with the canonical public event type if the subtype remains a record:

```rescript
...Event.t
```

If ReScript does not allow spreading an opaque alias, make the subtype opaque too:

```rescript
type storageEvent = Base__StorageEvent.t = private {...Base__StorageEvent.t}
```

Then expose subtype-specific property getters from its leaf module.

- [ ] **Step 2: Update `Document.createEvent`**

In `src/DOM/Document.res`, replace:

```rescript
external createEvent: (DomTypes.document, string) => EventTypes.event = "createEvent"
```

with:

```rescript
external createEvent: (DOM.document, string) => Event.t = "createEvent"
```

Use the current canonical document type path after the document-base migration. If `DOM.document` is not ready yet, keep the current document type and only replace the event return.

- [ ] **Step 3: Update global event APIs**

In `src/DOM/DomGlobal.res`, replace `EventTypes.eventType`, `EventTypes.eventListener`, `EventTypes.addEventListenerOptions`, and `EventTypes.event` with public event module types:

```rescript
EventType.t
Event.eventListener<'event>
Event.addEventListenerOptions
Event.t
```

After Task 4, listener and option types live in `Event.res`; do not introduce another public listener-types module in this plan.

- [ ] **Step 4: Update WebSocket event aliases**

In `src/WebSockets/MessageEvent.res`, replace:

```rescript
type event = EventTypes.event
type eventTarget = EventTypes.eventTarget
```

with:

```rescript
type event = Event.t
type eventTarget = EventTarget.t
```

- [ ] **Step 5: Run build and tests**

Run:

```sh
npm run build
npm test
```

Expected: both pass.

## Task 6: Remove EventTypes As A Publicly Relevant Type Owner

**Files:**

- Modify: `src/Event/EventTypes.res`
- Modify: `rescript.json`
- Test: `tests/unmonorepo/feature-spec.test.mjs`

- [ ] **Step 1: Search for stale EventTypes references**

Run:

```sh
rg -n "EventTypes\\.(event|eventTarget|eventType)" src tests docs/content
```

Expected: no hits outside `src/Event/EventTypes.res`.

- [ ] **Step 2: Delete temporary aliases**

Remove these from `src/Event/EventTypes.res`:

```rescript
type event = Base__Event.t = private {...Base__Event.t}
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
```

There should be no replacement `EventTypes.eventType` alias. All old `EventTypes.eventType` references should become `EventType.t`.

If `EventTypes.res` still contains listener option records or abort types, keep it internal until those are moved to their own canonical owners.

- [ ] **Step 3: Confirm `EventTypes` is not public**

In `rescript.json`, confirm the `src/Event` public list does not include `EventTypes`.

- [ ] **Step 4: Add feature metadata assertion**

Update `tests/unmonorepo/feature-spec.test.mjs` or the closest existing feature-public-list test to assert:

```js
assert(!publicModulesForFeature("WebAPI.Event").includes("EventTypes"));
assert(!publicModulesForFeature("WebAPI.EventTypes").includes("Base__Event"));
assert(!publicModulesForFeature("WebAPI.EventTypes").includes("Base__EventTarget"));
```

Use the actual helper names from the existing test file.

- [ ] **Step 5: Run feature tests**

Run:

```sh
node tests/unmonorepo/feature-spec.test.mjs
```

Expected: test passes.

## Task 7: Minimize Event-Related DOM Surface

**Files:**

- Modify: `src/DOM/DOM.res`
- Modify: `src/DOM/DomTypes.res`
- Modify: `src/DOM/Document.res`
- Modify: `rescript.json`
- Test: `tests/DOMAPI/Event__test.res`
- Test: `tests/DOMAPI/EventTarget__test.res`

- [ ] **Step 1: Keep only event aliases needed by this plan**

For this event-focused cleanup pass, `DOM.res` must expose `event` and `eventTarget` through the shared event owners:

```rescript
type event = Base__Event.t = private {...Base__Event.t}
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
```

Keep any already-required non-event aliases only if removing them would break the current branch during this event migration. Do not create or migrate `DOM.window`, `DOM.history`, `DOM.touchList`, or `DOM.dataTransfer` in this plan; those are follow-up base-type slices.

- [ ] **Step 2: Remove event declarations from `DomTypes`**

If `src/DOM/DomTypes.res` still defines or re-exports event types, delete those declarations after all references have moved:

```rescript
type event = ...
type eventTarget = ...
```

- [ ] **Step 3: Keep event consumers on leaf module types**

Use `Event.t` and `EventTarget.t` inside event behavior modules. Use `DOM.event` and `DOM.eventTarget` only for the public DOM-shaped type surface and compile tests that verify same-type aliasing.

- [ ] **Step 4: Confirm `DomTypes` is not public**

In `rescript.json`, ensure `DomTypes` is not public.

- [ ] **Step 5: Run event cleanup search**

Run:

```sh
rg -n "DomTypes\\.(event|eventTarget)|EventTypes\\.(event|eventTarget)" src tests docs/content
```

Expected: no stale event aliases remain outside temporary internal glue that is removed in Task 6.

## Task 8: Audit `@editor.completeFrom`

**Files:**

- Modify: all touched `.res` files with `@editor.completeFrom`
- Test: build

- [ ] **Step 1: Find stale annotations**

Run:

```sh
rg -n "@editor\\.completeFrom\\(DOM\\.|@editor\\.completeFrom\\(Base|@editor\\.completeFrom\\([A-Za-z0-9_]+\\.[A-Za-z0-9_]" src
```

- [ ] **Step 2: Apply annotation rule**

For every public leaf type, point completions at the public method module that owns the operations:

```rescript
@editor.completeFrom(CSSStyleDeclaration)
type t = Base__CSSStyleDeclaration.t = private {...Base__CSSStyleDeclaration.t}
```

Do not add `@editor.completeFrom(Event)` to `DOM.event` if it creates a `WebAPI.DOM -> WebAPI.Event` dependency. `DOM` and `Event` must remain sibling feature surfaces over shared event-type owners.

If pipe completion from `DOM.event` to `Event` can be supported without changing feature direction, capture that as a separate follow-up test before adding the annotation.

- [ ] **Step 3: Use multiple completion modules only when needed**

If a type genuinely needs completions from multiple modules, use the documented form:

```rescript
@editor.completeFrom([Element, EventTarget])
type t = Base__Element.t = private {...Base__Element.t}
```

- [ ] **Step 4: Run build**

Run:

```sh
npm run build
```

Expected: build succeeds.

## Task 9: Verify Feature Gating

**Files:**

- Modify: `tests/unmonorepo/feature-spec.test.mjs`
- Create or modify: feature build fixture if one exists

- [ ] **Step 1: Update the feature graph**

In `rescript.json`, make `WebAPI.DOM` and `WebAPI.Event` depend on `WebAPI.EventTypes`, and remove any direct dependency between them:

```json
{
  "features": {
    "WebAPI.DOM": ["WebAPI.EventTypes"],
    "WebAPI.Event": ["WebAPI.EventTypes"]
  }
}
```

Keep any additional existing dependencies only when the feature still directly references modules from those features. The target for this plan is that event base types do not force `WebAPI.Event -> WebAPI.DOM` or require either event consumer feature to compile unrelated base modules.

- [ ] **Step 2: Assert `WebAPI.DOM` is thin**

Add assertions that `WebAPI.DOM` public modules include only approved public DOM modules for this phase:

```js
assert.deepEqual(publicModulesForFeature("WebAPI.DOM").sort(), ["DOM"].sort());
```

Adjust to the actual helper API in the existing test file.

- [ ] **Step 3: Assert `EventType` is public from `WebAPI.EventTypes`**

Add assertion:

```js
assert(publicModulesForFeature("WebAPI.EventTypes").includes("EventType"));
```

- [ ] **Step 4: Assert DOM and Event depend on EventTypes**

Add assertions:

```js
assert(featureDependencies("WebAPI.DOM").includes("WebAPI.EventTypes"));
assert(featureDependencies("WebAPI.Event").includes("WebAPI.EventTypes"));
```

- [ ] **Step 5: Assert DOM and Event do not depend on each other**

Add assertion:

```js
assert(!featureDependencies("WebAPI.DOM").includes("WebAPI.Event"));
assert(!featureDependencies("WebAPI.Event").includes("WebAPI.DOM"));
```

- [ ] **Step 6: Run feature tests**

Run:

```sh
node tests/unmonorepo/feature-spec.test.mjs
```

Expected: test passes.

## Task 10: Final Verification

**Files:**

- All changed files

- [ ] **Step 1: Run formatting check**

Run:

```sh
npm run format:check
```

Expected: format check passes.

- [ ] **Step 2: Run build**

Run:

```sh
npm run build
```

Expected: build passes.

- [ ] **Step 3: Run tests**

Run:

```sh
npm test
```

Expected: tests pass.

- [ ] **Step 4: Run docs build if public docs changed**

Run:

```sh
npm run build:docs
```

Expected: docs build passes.

## Resolved Review Decisions

1. `eventTarget` is connected to the event feature as `Event.eventTarget` and is also exposed from the DOM type surface as `DOM.eventTarget`. Both aliases use `Base__EventTarget.t`.

2. Event listener, init, and options records live in `Event.res` for this plan. They are not split into separate public modules yet.

3. `DOM.window`, `DOM.history`, `DOM.touchList`, and `DOM.dataTransfer` are follow-up base-type slices, not part of this `DOM.event` migration plan.

4. `DOM.event` does not force `@editor.completeFrom(Event)` in this plan. If completion can be made explicit without changing feature direction, test that in a follow-up.

## Review Checklist

- `DOM` is the public DOM-shaped type alias module, not the shared type owner.
- `WebAPI.EventTypes` owns shared internal event `Base__*` types and lightweight public shared event type modules such as `EventType`.
- `WebAPI.EventTypes` does not expose a public `EventTypes` module.
- `WebAPI.DOM` and `WebAPI.Event` both depend on `WebAPI.EventTypes`.
- `WebAPI.DOM` and `WebAPI.Event` do not depend on each other.
- `DOM.event` is fully opaque.
- `Event.eventTarget` and `DOM.eventTarget` are same-type aliases over `Base__EventTarget.t`.
- Event property access exists only through `Event` getters.
- `EventType.t` owns public event type variants.
- `Base__*`, `*Types`, and `*Base` modules are not public.
- Leaf modules do not alias through `DOM`; they alias the same internal owner as `DOM`.
- `DomTypes` has no public role and carries no event aliases after this migration.
- `@editor.completeFrom` annotations point at real public method modules and do not force bad feature dependencies.
