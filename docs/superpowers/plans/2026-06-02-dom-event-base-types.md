# DOM Event Base Types Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement follow-up tasks task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Make `DOM.event` and `Event.t` same-type aliases over a shared hidden base owner, with `DOM.event` fully opaque and event fields exposed through `Event` getters.

**Architecture:** Internal `Base__*` modules own canonical shared event object/interface types and are never public. `DOM` and event leaf modules are sibling public surfaces over those shared internal owners; neither aliases through the other. `WebAPI.EventTypes` is the narrow shared feature for canonical event base owners, with `EventType` as its only public module. Internal listener/init/abort helper records now live under `src/EventTypes/EventTypes.res`, which remains non-public.

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
- [x] Removed `eventTarget` and `eventType` aliases from `src/DOM/DomTypes.res`.
- [x] Removed low-risk `DomTypes` aliases for `DOMRectReadOnly`, `DOMRect`, `DOMRectList`, `FileList`, `TextTrackList`, and `CSSStyleValue`.
- [x] Added explicit feature dependencies exposed by those direct public owner references.
- [x] Audited stale `@editor.completeFrom` annotations that pointed through `DOM.*` or non-public base owner paths.
- [x] Moved shared internal event listener/init/abort helper shapes under the `WebAPI.EventTypes` source root.
- [x] Removed reverse `@editor.completeFrom` annotations from the internal `EventTypes` helper owner to public Event leaf modules.
- [x] Minimized `src/DOM/DOM.res` to only `event`, `eventTarget`, and `element`.
- [x] Made `DOM.element` a same-type alias over opaque `Base__Element.t`.
- [x] Removed the `src/Base/Base.res` wrapper module and direct `Base.*` references.
- [x] Removed leaf-owned alias re-exports from `Base__Document.res` for `Location.t` and the old structural element type.

Not completed in this slice:

- [ ] Remove or split the remaining non-event `DomTypes.res` aliases.
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
- `src/DOM/DOM.res` is now a minimal public base type surface. The broader `WebAPI.DOM` feature still has dependencies because `DomTypes.res` remains a transitional internal owner.
- `src/Base/Base.res` has been removed. Base owners are referenced directly as hidden implementation modules.
- `WebAPI.IntersectionObserver` and `WebAPI.ResizeObserver` now explicitly depend on `WebAPI.DOM` and `WebAPI.Geometry`.
- `WebAPI.UIEvents` now explicitly depends on `WebAPI.DOM`, `WebAPI.Event`, and `WebAPI.FileList`.
- `src/DOM` does not reference public `Event.*` or `EventTarget.*` modules for the event aliases.
- `src/DOM/DomGlobal.res` references internal listener/options helper shapes from `src/EventTypes/EventTypes.res`. That file is not public.

## Current Type Ownership

Shared internal owners:

```rescript
// src/EventTypes/Base__Event.res
type t = private {}

// src/EventTypes/Base__EventTarget.res
type t = private {}

// src/Base/Base__Element.res
type t = private {}
```

Public sibling aliases:

```rescript
// src/DOM/DOM.res
type event = Base__Event.t = private {...Base__Event.t}
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
type element = Base__Element.t = private {...Base__Element.t}

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

Base__Element.t
  -> DOM.element
  -> DomTypes.element
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

`src/EventTypes/EventTypes.res` remains internal. It currently owns helper shapes that are shared by event modules and DOM globals:

- `abortController`
- `abortSignal`
- `eventListener<'event>`
- `eventListenerOptions`
- `eventInit`
- `addEventListenerOptions`
- `extendableEvent`

This is intentional for the current slice. There is no public `EventTypes` module.

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
- `tests/unmonorepo/feature-spec.test.mjs`

These verify:

- `DOM.event` can be passed where `Event.t` is expected.
- `Event.t` can be passed where `DOM.event` is expected.
- `DOM.eventTarget`, `Event.eventTarget`, and `EventTarget.t` are mutually assignable.
- `EventType.t` accepts the public variant constructors and custom event strings.
- The internal `EventTypes` helper module lives under `src/EventTypes`, not `src/Event`.
- The internal `EventTypes` helper module does not point editor completions back to `AbortController`, `AbortSignal`, or `ExtendableEvent`.

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

### `DOM.res` Removal Audit

`src/DOM/DOM.res` has been reduced to a small public base alias surface. It should not become a convenience re-export module for types that are easily named through their owning feature module.

The enforced end state is that `DOM.res` has no structural record fields and no non-event behavior surface. Keep only thin opaque aliases needed as core base names, and move all field-bearing records, option records, variants, and feature-specific aliases to their leaf feature owners.

Keep in `DOM.res` as the minimal base surface:

- Existing event base aliases: `event`, `eventTarget`.
- Existing element base alias: `element`, backed by opaque `Base__Element.t`.

These definitions were removed from `DOM.res` and should stay out. Do not add compatibility aliases for feature-owned types; use the owning module type directly, such as `Location.t`, `CSSStyleSheet.t`, `Animation.t`, `TouchList.t`, or `DataTransfer.t`.

- External feature aliases:
  `domException`, `domStringList`, `location`, `orientationType`, `screenOrientation`.
- CSSOM and CSSTypedOM surface:
  `mediaList`, `styleSheetList`, `styleSheet`, `cssStyleSheet`, `cssRule`, `cssRuleList`, `cssStyleDeclaration`, `mediaQueryList`, `domStringMap`.
- Web Animations surface:
  `animationPlayState`, `animationReplaceState`, `fillMode`, `playbackDirection`, `compositeOperation`, `iterationCompositeOperation`, `animationTimeline`, `documentTimeline`.
- Geometry, FileList, and VTT aliases:
  `domRectReadOnly`, `domRect`, `domRectList`, `fileList`, `textTrackList`.
- Custom Elements surface:
  `customElementRegistry`, `elementInternals`, `customStateSet`.
- Window, Navigator, Screen, and Remote Playback helper shapes:
  `shareData`, `barProp`, `screen`, `vibratePattern`, `remotePlaybackState`, `fragmentDirective`.
- Canvas, ImageBitmap, and VideoFrame helper shapes:
  `renderingContext`, `offscreenRenderingContext`, `imageOrientation`, `premultiplyAlpha`, `colorSpaceConversion`, `resizeQuality`, `videoPixelFormat`, `videoColorPrimaries`, `videoTransferCharacteristics`, `videoMatrixCoefficients`, `alphaOption`, `predefinedColorSpace`.
- DOM leaf interface records and local helper shapes:
  `domTokenList`, `namedNodeMap`, `node`, `nodeList`, `shadowRoot`, `domImplementation`, `documentType`, `document`, `mutationRecord`, `attr`, `characterData`, `documentFragment`, `xmlDocument`, `text`, `cdataSection`, `comment`, `processingInstruction`, `abstractRange`, `range`, `staticRange`, `nodeFilter`, `nodeIterator`, `treeWalker`, `caretPosition`, `selection`.
- DOM operation and option enums/records:
  `shadowRootMode`, `slotAssignmentMode`, `documentReadyState`, `documentVisibilityState`, `insertPosition`, `scrollBehavior`, `fullscreenNavigationUI`, `referrerPolicy`, `scrollLogicalPosition`, `selectionMode`.
- HTML element records and HTML helper types previously embedded in `DOM.res`:
  `htmlElement`, `htmlHeadElement`, `htmlFormElement`, `htmlImageElement`, `htmlEmbedElement`, `htmlAnchorElement`, `htmlAreaElement`, `htmlScriptElement`, `htmlSlotElement`, `htmlTableElement`, `htmlTableCaptionElement`, `htmlTableSectionElement`, `htmlTableCellElement`, `htmlTableRowElement`, `htmlButtonElement`, `htmlLabelElement`, `htmlTextAreaElement`, `htmlOutputElement`, `htmlInputElement`, `htmlDataListElement`, `htmlSelectElement`, `htmlOptionElement`, `htmlOptionsCollection`, `htmlCollection`, `htmlFormControlsCollection`, `canPlayTypeResult`, `autoFillBase`, `validityState`, `mediaError`, `timeRanges`, `videoPlaybackQuality`.

Ordering constraints for removal:

- Move `DomTypes` consumers first. Any file using `DomTypes.foo = DOM.foo` must switch to the public leaf type or an internal hidden owner before `DOM.foo` is removed.
- Do not make `WebAPI.DOM` depend on leaf features that already depend on `WebAPI.DOM`. For circular candidates such as `HTMLCollection`, `HTMLElement`, `TouchList`, and `DataTransfer`, split a hidden owner into a shared lower-level feature or keep the type under its owning feature module.
- Remove `@editor.completeFrom(...)` annotations from `DOM.res` entries as the entries are deleted. Do not replace them with annotations that point from a base owner to a higher-level public leaf.
- Do not recreate `Base.res` as a compatibility aggregator. Reference hidden base owners directly.
- Do not add leaf-owned compatibility aliases to `Base__Document.res` or any eventual window base owner. If a property needs `Location.t`, `CSSStyleSheet.t`, or another public leaf type, use that leaf type directly or move the behavior onto the leaf module.
- After each removal slice, run at least:

```sh
npm run build
node_modules/.bin/rescript build --features WebAPI.DOM --prod
```

### Duplicate Type Declaration Audit

Consumer rule: enabling a feature should expose that feature's own types and the minimum base handles it genuinely needs. It should not mint fresh abstract stand-ins for types owned by other features. If a consumer wants `HTMLElement`, CSSOM, Web Animations, Window, Location, or Canvas integration, they should enable those features and receive the owning module's type, not a duplicate placeholder.

Acceptable pattern:

- Hidden shared base owners such as `Base__Event.t`, `Base__EventTarget.t`, and `Base__Element.t`.
- Public aliases over the same hidden owner, such as `DOM.element = Base__Element.t = private {...Base__Element.t}`.
- Feature-local helper records/enums that are not independently exposed by another feature.

Smell pattern:

- `type htmlElement` in `Base__Document.res` or `Base__Element.res`: creates `Base__Document.htmlElement` / `Base__Element.htmlElement`, not `HTMLElement.t`.
- `type styleSheetList` in `Base__Document.res`: creates a separate type from `StyleSheetList.t`.
- `type window` in `Base__Document.res`: creates a separate type from `Window.t`.
- `type htmlElement = private {}` in `DomTypes.res` while `HTMLElement.t` aliases back to it: puts an HTML-owned type under the DOM feature and forces wrong feature ownership.
- `type cssStyleSheet = CSSStyleSheet.t` in `DomTypes.res`: makes `WebAPI.DOM` depend on CSSOM just to name a CSSOM-owned type.

Current high-risk duplicate declarations:

- `src/Base/Base__Document.res` lines 3-20:
  `node`, `htmlElement`, `nodeList`, `domImplementation`, `documentType`, `documentReadyState`, `htmlHeadElement`, `htmlCollection`, `htmlImageElement`, `htmlEmbedElement`, `htmlFormElement`, `htmlScriptElement`, `window`, `documentVisibilityState`, `fragmentDirective`, `documentTimeline`, `styleSheetList`, `cssStyleSheet`.
- `src/Base/Base__Element.res` lines 5-13:
  `document`, `node`, `htmlElement`, `nodeList`, `domTokenList`, `namedNodeMap`, `shadowRoot`, `htmlCollection`, `htmlSlotElement`.
- `src/DOM/DomTypes.res` lines 12-74:
  DOM, HTML, CSSOM, Custom Elements, MutationObserver, and EME placeholders all live in one feature bag. This makes feature ownership ambiguous and creates same-named types that only work if every consumer routes through `DomTypes`.

Target ownership:

- Core DOM feature owns DOM primitives only: `Document.t`, `Node.t`, `Element.t`/`DOM.element`, `NodeList.t`, `DocumentFragment.t`, `ShadowRoot.t`, `DOMTokenList.t`, `NamedNodeMap.t`, `DOMImplementation.t`, `DocumentType.t`, `Attr.t`, `CharacterData.t`, `Text.t`, `Comment.t`, `Range.t`, `Selection.t`, and related DOM-only option records/enums.
- HTML feature owns every `HTML*Element` type, HTML collections specific to forms/options, `ValidityState`, `MediaError`, `TimeRanges`, and HTML media helpers.
- CSSOM feature owns `StyleSheet.t`, `StyleSheetList.t`, `CSSStyleSheet.t`, `CSSRule.t`, `CSSRuleList.t`, `CSSStyleDeclaration.t`, `MediaList.t`, and `MediaQueryList.t`.
- Web Animations feature owns `Animation.t`, `Animation.timeline`, `DocumentTimeline.t`, effect timing records, keyframe option records, and `getAnimations`/`animate` option types.
- Window feature owns `Window.t` and window-only option records. DOM should not define a private `window` stand-in.
- Location, Geometry, File, FileList, VTT, Canvas, Custom Elements, EME, RemotePlayback, ScreenOrientation, and ViewTransitions keep their own public leaf types.

Removal order:

1. Make `Base__Document.document` opaque and delete its field-bearing record. Then add `Document.res` accessors for DOM-only properties that return DOM-owned types.
2. Move HTML-returning document properties out of `WebAPI.DOM` into the HTML feature. Examples: `body`, `head`, `images`, `embeds`, `plugins`, `links`, `forms`, `scripts`, `currentScript`.
3. Move CSSOM-returning document properties out of `WebAPI.DOM` into the CSSOM feature. Examples: `styleSheets`, `adoptedStyleSheets`.
4. Move Web Animations document integration out of `WebAPI.DOM` into the Web Animations feature. Examples: `timeline`, `getAnimations`.
5. Move Window-returning document integration out of core DOM or make it require the Window feature explicitly. Examples: `defaultView`, `open2`.
6. Make `Base__Element` only own `type t = private {}` and delete its structural `element` record plus the duplicate abstract stand-ins. Keep behavior in `Element.res` and feature-specific extension modules.
7. Split `DomTypes.res` by owner. Each public leaf module should either define its own `type t` over a hidden same-feature owner, or alias a lower-level base handle deliberately. It should not import an unrelated `DomTypes.*` placeholder as its root type.
8. Update feature dependencies so `WebAPI.DOM` no longer depends on HTML, CSSOM, Web Animations, Canvas, EME, RemotePlayback, File, FileList, VTT, or Window solely to satisfy duplicate type declarations.

Guard tests to add before each removal:

```js
test("does not allow duplicate abstract type declarations in base document and element owners", () => {
  const baseDocumentSource = readFileSync(
    join(repoRoot, "src", "Base", "Base__Document.res"),
    "utf8",
  );
  const baseElementSource = readFileSync(
    join(repoRoot, "src", "Base", "Base__Element.res"),
    "utf8",
  );

  assert.equal(baseDocumentSource.includes("type htmlElement"), false);
  assert.equal(baseDocumentSource.includes("type styleSheetList"), false);
  assert.equal(baseDocumentSource.includes("type window"), false);
  assert.equal(baseElementSource.includes("type htmlElement"), false);
  assert.equal(baseElementSource.includes("type htmlSlotElement"), false);
});
```

```js
test("keeps DOM feature dependencies limited to DOM-owned base features", () => {
  const domDeps = featureSpecs.find(({ featureName }) => featureName === "WebAPI.DOM").dependencies;

  assert.equal(domDeps.includes("WebAPI.HTML"), false);
  assert.equal(domDeps.includes("WebAPI.CSSOM"), false);
  assert.equal(domDeps.includes("WebAPI.Animations"), false);
  assert.equal(domDeps.includes("WebAPI.Window"), false);
});
```

- [x] **Step 1: Inventory `DomTypes` usage**

Run:

```sh
rg -n "DomTypes\\." src tests docs/content
```

Classify each hit as:

- a type that should move to a leaf module
- a type that should remain as a `DOM.*` base alias
- a transitional alias that can be deleted

- [x] **Step 2: Remove event aliases from `DomTypes`**

After all consumers are confirmed to use `DOM.eventTarget`, `Event.eventTarget`, or `EventTarget.t`, remove:

```rescript
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
type eventType = EventType.t
```

- [x] **Step 3: Keep `DOM.event` and `DOM.eventTarget` in `DOM.res`**

These aliases remain part of the public DOM-shaped base type surface:

```rescript
type event = Base__Event.t = private {...Base__Event.t}
type eventTarget = Base__EventTarget.t = private {...Base__EventTarget.t}
```

- [x] **Step 4: Rebuild**

Run:

```sh
npm run build
```

Expected: build passes.

## Follow-Up Task 2: Move Or Split Event Helper Shapes If Needed

**Goal:** Decide whether internal helper records should stay in a shared internal `EventTypes` module or split into smaller hidden owners.

**Files:**

- Delete: `src/Event/EventTypes.res`
- Add: `src/EventTypes/EventTypes.res`
- Modify: `src/Event/AbortSignal.res`
- Modify: `src/Event/AbortController.res`
- Modify: `src/Event/ExtendableEvent.res`
- Modify: `src/Event/Event.res`
- Modify: `src/DOM/DomGlobal.res`

- [x] **Step 1: Keep current shape unless it causes a concrete dependency problem**

Result: `DOM` did have source-level reliance on a helper file physically located in `src/Event`, so the shared listener/options/abort helper shapes were moved under `src/EventTypes/EventTypes.res`. The module remains internal because `WebAPI.EventTypes` only exposes `EventType`.

- [x] **Step 2: If splitting, use hidden same-type owners**

Use the same private-spread pattern:

```rescript
type t = Base__AbortSignal.t = private {...Base__AbortSignal.t}
```

Result: no split was needed. `AbortSignal.t`, `AbortController.t`, and `ExtendableEvent.t` remain same-type aliases over internal `EventTypes.*` helper shapes, no new public module was exposed, and the internal helper owner does not point completions back to those public Event leaf modules.

- [x] **Step 3: Rebuild**

Run:

```sh
npm run build
```

Expected: build passes.

Result: build passes.

## Follow-Up Task 3: Audit `@editor.completeFrom`

**Goal:** Remove stale completion annotations that point through `DOM.*` or non-public modules.

**Files:**

- Modify: touched `.res` files containing invalid or stale `@editor.completeFrom` annotations

- [x] **Step 1: Find stale annotations**

Run:

```sh
rg -n "@editor\\.completeFrom\\(DOM\\.|@editor\\.completeFrom\\(Base|@editor\\.completeFrom\\([A-Za-z0-9_]+\\.[A-Za-z0-9_]" src
```

- [x] **Step 2: Point public leaf aliases at public leaf modules**

Use this shape when the completion owner is public and does not create a bad feature dependency:

```rescript
@editor.completeFrom(CSSStyleDeclaration)
type t = Base__CSSStyleDeclaration.t = private {...Base__CSSStyleDeclaration.t}
```

Do not add `@editor.completeFrom(Event)` to `DOM.event` unless it can be proven not to create a `WebAPI.DOM -> WebAPI.Event` dependency.

- [x] **Step 3: Rebuild**

Run:

```sh
npm run build
```

Expected: build passes.

Result: build passes. The broad audit command still matches `@editor.completeFrom(BaseAudioContext)`, but that is an intentional public WebAudio leaf module, not a non-public base owner path.

## Follow-Up Task 4: Thin DOM Surface Check

**Goal:** Verify the final base surface stays thin and does not pull in unrelated DOM leaf behavior.

**Target public `DOM` types:**

- `DOM.element`
- `DOM.event`
- `DOM.eventTarget`

- [ ] **Step 1: Create or use a local compatibility fixture**

The fixture should depend on the smallest intended WebAPI feature set and compile representative DOM/event usage. It should use feature-owned names for non-core types instead of `DOM.*` compatibility aliases.

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
- [x] `DomTypes` no longer carries event aliases.
- [x] `DomTypes` no longer carries low-risk public-owner aliases for geometry list/rects, `FileList`, `TextTrackList`, or `CSSStyleValue`.
- [x] `DOM.res` is minimal.
- [x] `DOM.element` is opaque over `Base__Element.t`.
- [x] `Base.res` has been removed.
- [x] `Base__Document` no longer re-exports `Location.t` or the structural element alias.
- [ ] `DomTypes` has no remaining role.
- [x] All stale `@editor.completeFrom` annotations have been audited.
