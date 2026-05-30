# Global Singleton Access Design

**Date:** 2026-05-20
**Status:** Draft plan for review before implementation

## Context

Many Web APIs in this package are currently modeled as instance methods on an explicit browser-owned receiver. For APIs such as `Crypto`, that forces users to first obtain a global object and then pipe it into the API module:

```rescript
let id = DomGlobal.crypto->Crypto.randomUUID
```

In actual usage, these APIs are almost always accessed through singleton host objects that already exist on the global object or on `navigator`. The preferred public API should make that common case direct:

```rescript
let id = Crypto.randomUUID()
```

The `Crypto` module has already been manually adjusted toward this model:

```rescript
@scope("globalThis.crypto")
external randomUUID: unit => string = "randomUUID"
```

This plan identifies the rest of the API surface that should follow the same rule, while preserving receiver-based APIs for true instance objects such as `Element`, `Document`, `Request`, `Response`, `MediaStream`, `AudioContext`, and canvas contexts.

All direct singleton bindings should scope through `globalThis`, not through bare globals such as `crypto`, `navigator`, or `performance`.

## Goals

- Replace explicit singleton receivers with direct scoped bindings for browser-owned singleton objects.
- Preserve receiver-based `@send` bindings for real instance APIs.
- Make the common browser usage path concise and hard to misuse.
- Keep API modules aligned with Web platform object names where possible.
- Add tests that compile the intended direct usage style.
- Avoid introducing broad global wrappers that hide whether an API is global, navigator-owned, or instance-owned.
- Use `globalThis` as the root for global and nested singleton scopes.
- Remove redundant singleton accessors from `DomGlobal`, `Window`, and `Document` once direct scoped APIs make those values unnecessary.

## Non-Goals

- This change does not convert all `@send` bindings.
- This change does not redesign unrelated type modeling.
- This change does not introduce runtime polyfills or availability checks.
- This change does not remove useful raw instance values when users still need the value itself, rather than just the singleton's methods.

## Core Rule

Convert a binding from receiver-based `@send` to direct `@scope` only when the receiver is a singleton host object that users should not normally need to pass around.

Every converted singleton binding should use a `globalThis`-rooted scope:

```rescript
@scope("globalThis.crypto")
external randomUUID: unit => string = "randomUUID"
```

Avoid bare scopes:

```rescript
@scope("crypto")
external randomUUID: unit => string = "randomUUID"
```

The `globalThis` form is preferred because it is explicit about which global object is being read, works better across windows and worker-like globals, and is easier for tests or consumers to mock by replacing `globalThis.<api>`.

Keep `@send` when:

- The receiver is a user-created instance.
- The receiver can naturally come from many places.
- The same module is intended to work with arbitrary instances of that Web API object.
- The operation is inherited from a generic protocol such as `EventTarget` and the direct singleton shape has not been deliberately designed yet.

## Binding Patterns

### Direct Global Singleton

Use this when the object is a direct global such as `globalThis.crypto`, `globalThis.performance`, `globalThis.history`, `globalThis.indexedDB`, or `globalThis.caches`.

Before:

```rescript
@send
external now: PerformanceTypes.performance => float = "now"
```

After:

```rescript
@scope("globalThis.performance")
external now: unit => float = "now"
```

Target usage:

```rescript
let timestamp = Performance.now()
```

### Nested Singleton

Use this when the object is a singleton property under another singleton, most commonly `globalThis.navigator`.

Before:

```rescript
@send
external readText: ClipboardTypes.clipboard => promise<string> = "readText"
```

After:

```rescript
@scope("globalThis.navigator.clipboard")
external readText: unit => promise<string> = "readText"
```

Target usage:

```rescript
let text = await Clipboard.readText()
```

### Singleton Property Access

Use this when a global singleton exposes another object that is useful as a value, such as `globalThis.crypto.subtle`.

```rescript
@scope("globalThis.crypto")
external subtle: WebCryptoTypes.subtleCrypto = "subtle"
```

This can remain available even if `SubtleCrypto` also exposes direct scoped operations.

### Static Constructor Or Static Class Method

Do not change existing static bindings that are already modeled with class or constructor scopes.
Do apply the `globalThis` root to those scopes when they are touched by this migration.

Examples that should remain conceptually unchanged:

```rescript
@scope("globalThis.URL")
external createObjectURL: unknown => string = "createObjectURL"

@scope("globalThis.Response")
external error: unit => Response.t = "error"
```

These are not singleton object methods. They are static methods on constructors.

## Candidate Modules

### WebCrypto

Current singleton:

- `DomGlobal.crypto`

Target direct API:

```rescript
Crypto.randomUUID()
Crypto.getRandomValuesFromUint8Array(values)
Crypto.subtle
```

Already changed:

- `Crypto.getRandomValuesFromInt8Array`
- `Crypto.getRandomValuesFromUint8Array`
- `Crypto.getRandomValuesFromUint8ClampedArray`
- `Crypto.getRandomValuesFromInt16Array`
- `Crypto.getRandomValuesFromUint16Array`
- `Crypto.getRandomValuesFromInt32Array`
- `Crypto.getRandomValuesFromUint32Array`
- `Crypto.getRandomValuesFromBigInt64Array`
- `Crypto.getRandomValuesFromBigUint64Array`
- `Crypto.randomUUID`
- `Crypto.subtle`

Likely next change:

- Convert `SubtleCrypto` methods to `@scope("globalThis.crypto.subtle")`.

Target direct API:

```rescript
SubtleCrypto.digest(~algorithm, ~data)
SubtleCrypto.encrypt(~algorithm, ~key, ~data)
SubtleCrypto.importKey(...)
```

Open question:

- Keep `Crypto.subtle->SubtleCrypto.digest(...)` compatibility temporarily, or make `SubtleCrypto` direct-only?

Recommended approach:

- Convert `SubtleCrypto` to direct scoped bindings.
- Keep `Crypto.subtle` as a value accessor for users who need the raw `subtleCrypto` value.
- Do not add duplicate receiver-based wrappers unless compatibility becomes a release requirement.

### Performance

Current singleton:

- `DomGlobal.performance`

Current usage shape:

```rescript
DomGlobal.performance->Performance.now()
DomGlobal.performance->Performance.mark(~markName="start")
```

Target direct API:

```rescript
Performance.now()
Performance.mark(~markName="start")
Performance.getEntries()
Performance.clearMarks()
```

Implementation:

- Convert `Performance.res` methods from `@send` to `@scope("globalThis.performance")`.
- Remove the explicit `PerformanceTypes.performance` receiver from function signatures.

Special handling:

- `Performance` currently includes `EventTarget.Impl`.
- Decide separately whether singleton `Performance.addEventListener(...)` wrappers are needed.
- Do not let generic event-target support block the method conversion.

### History

Current singleton:

- `DomGlobal.history`

Target direct API:

```rescript
History.back()
History.forward()
History.go(~delta=-1)
History.pushState(~data, ~unused="", ~url="?page=2")
History.replaceState(~data, ~unused="", ~url="?page=3")
```

Implementation:

- Convert all `History.res` methods to `@scope("globalThis.history")`.

### IndexedDB

Current singleton:

- `DomGlobal.indexedDB`

Target direct API:

```rescript
IDBFactory.open_(~name="app-db")
IDBFactory.deleteDatabase("app-db")
IDBFactory.databases()
IDBFactory.cmp(~first, ~second)
```

Implementation:

- Convert `IDBFactory.res` from `@send` to `@scope("globalThis.indexedDB")`.

Keep receiver-based:

- `IDBDatabase`
- `IDBObjectStore`
- `IDBIndex`
- `IDBTransaction`

Those are real IndexedDB instances and should remain pipe-friendly.

### CacheStorage

Current singleton:

- `DomGlobal.caches`

Target direct API:

```rescript
CacheStorage.open_("assets")
CacheStorage.keys()
CacheStorage.has("assets")
CacheStorage.delete("assets")
```

Implementation:

- Convert `WebWorkers/CacheStorage.res` methods to `@scope("globalThis.caches")`.

Keep receiver-based:

- `ServiceWorker/Cache.res`

`Cache` instances returned by `CacheStorage.open_` should remain instance APIs.

### WebSpeech

Current singleton:

- `DomGlobal.speechSynthesis`

Target direct API:

```rescript
SpeechSynthesis.speak(utterance)
SpeechSynthesis.cancel()
SpeechSynthesis.pause()
SpeechSynthesis.resume()
SpeechSynthesis.getVoices()
```

Implementation:

- Convert methods in `SpeechSynthesis.res` to `@scope("globalThis.speechSynthesis")`.

Special handling:

- `SpeechSynthesis` currently includes `EventTarget.Impl`.
- Decide whether to add direct event listener wrappers for `speechSynthesis` events.

### CustomElementRegistry

Current singleton:

- `DomGlobal.customElements`

Target direct API:

```rescript
CustomElementRegistry.define(~name, ~constructor, ~options=?)
CustomElementRegistry.whenDefined("my-element")
CustomElementRegistry.getName(constructor)
CustomElementRegistry.upgrade(node)
```

Implementation:

- Convert `CustomElementRegistry.res` to `@scope("globalThis.customElements")`.

Open naming question:

- The module name is technically the interface name, but user-facing usage may read better as `CustomElements.define(...)`.
- Recommended for now: keep `CustomElementRegistry` to avoid a public module rename in the same change.

## Navigator-Owned Candidate Modules

These modules currently require this general shape:

```rescript
DomGlobal.navigator->Navigator.someProperty->SomeModule.someMethod(...)
```

They should be converted to nested scopes where the Web API object is a singleton property of `globalThis.navigator`.

### Clipboard

Current singleton path:

- `navigator.clipboard`

Target direct API:

```rescript
Clipboard.read()
Clipboard.readText()
Clipboard.write(items)
Clipboard.writeText("text")
```

Implementation:

- Convert `Clipboard.res` methods to `@scope("globalThis.navigator.clipboard")`.

Keep receiver-based:

- `ClipboardItem.res`

### CredentialsContainer

Current singleton path:

- `navigator.credentials`

Target direct API:

```rescript
CredentialsContainer.get(~options)
CredentialsContainer.create(~options)
CredentialsContainer.store(credential)
CredentialsContainer.preventSilentAccess()
```

Implementation:

- Convert `CredentialsContainer.res` to `@scope("globalThis.navigator.credentials")`.

### Geolocation

Current singleton path:

- `navigator.geolocation`

Target direct API:

```rescript
Geolocation.getCurrentPosition(~successCallback, ~errorCallback=?, ~options=?)
Geolocation.watchPosition(~successCallback, ~errorCallback=?, ~options=?)
Geolocation.clearWatch(id)
```

Implementation:

- Convert `Geolocation.res` to `@scope("globalThis.navigator.geolocation")`.

Keep receiver-based:

- `GeolocationCoordinates`
- `GeolocationPosition`

### MediaCapabilities

Current singleton path:

- `navigator.mediaCapabilities`

Target direct API:

```rescript
MediaCapabilities.decodingInfo(configuration)
MediaCapabilities.encodingInfo(configuration)
```

Implementation:

- Convert `MediaCapabilities.res` to `@scope("globalThis.navigator.mediaCapabilities")`.

### MediaDevices

Current singleton path:

- `navigator.mediaDevices`

Target direct API:

```rescript
MediaDevices.enumerateDevices()
MediaDevices.getSupportedConstraints()
MediaDevices.getUserMedia(~constraints)
MediaDevices.getDisplayMedia(~options)
```

Implementation:

- Convert `MediaDevices.res` methods to `@scope("globalThis.navigator.mediaDevices")`.

Special handling:

- `MediaDevices` currently includes `EventTarget.Impl`.
- Decide whether to add direct singleton event wrappers.

Keep receiver-based:

- `MediaStream`
- `MediaStreamTrack`
- `MediaDeviceInfo`

### MediaSession

Current singleton path:

- `navigator.mediaSession`

Target direct API:

```rescript
MediaSession.setActionHandler(~action, ~handler)
MediaSession.setPositionState(~state)
```

Implementation:

- Convert `MediaSession.res` to `@scope("globalThis.navigator.mediaSession")`.

### Permissions

Current singleton path:

- `navigator.permissions`

Target direct API:

```rescript
Permissions.query(descriptor)
```

Implementation:

- Convert `Permissions.res` to `@scope("globalThis.navigator.permissions")`.

### ScreenWakeLock

Current singleton path:

- `navigator.wakeLock`

Target direct API:

```rescript
WakeLock.request(~type_=Screen)
```

Implementation:

- Convert `WakeLock.res` to `@scope("globalThis.navigator.wakeLock")`.

Keep receiver-based:

- `WakeLockSentinel.release`

### ServiceWorkerContainer

Current singleton path:

- `navigator.serviceWorker`

Target direct API:

```rescript
ServiceWorkerContainer.register("/sw.js")
ServiceWorkerContainer.getRegistration()
ServiceWorkerContainer.getRegistrations()
ServiceWorkerContainer.startMessages()
```

Implementation:

- Convert `ServiceWorkerContainer.res` to `@scope("globalThis.navigator.serviceWorker")`.

Special handling:

- `ServiceWorkerContainer` currently includes `EventTarget.Impl`.
- Decide whether direct event listener wrappers are needed.

Keep receiver-based:

- `ServiceWorker`
- `ServiceWorkerRegistration`
- `NavigationPreloadManager`
- `Clients`
- `Cache`

### StorageManager

Current singleton path:

- `navigator.storage`

Target direct API:

```rescript
StorageManager.persisted()
StorageManager.persist()
StorageManager.estimate()
StorageManager.getDirectory()
```

Implementation:

- Convert `StorageManager.res` to `@scope("globalThis.navigator.storage")`.

### LockManager

Current singleton path:

- `navigator.locks`

Target direct API:

```rescript
LockManager.request(~name, ~callback)
LockManager.request2(~name, ~options, ~callback)
LockManager.query()
```

Implementation:

- Convert `LockManager.res` to `@scope("globalThis.navigator.locks")`.

## WebStorage Decision

`Storage` is a special case because there are two common singleton instances:

- `localStorage`
- `sessionStorage`

Current usage:

```rescript
DomGlobal.localStorage->Storage.getItem("key")
DomGlobal.sessionStorage->Storage.setItem(~key="key", ~value="value")
```

A single direct `Storage.getItem("key")` would be ambiguous.

Recommended design:

- Keep `Storage.res` receiver-based for arbitrary `Storage` instances.
- Add separate singleton modules:
  - `LocalStorage`
  - `SessionStorage`

Target direct API:

```rescript
LocalStorage.getItem("key")
LocalStorage.setItem(~key="key", ~value="value")
LocalStorage.clear()

SessionStorage.getItem("key")
SessionStorage.setItem(~key="key", ~value="value")
SessionStorage.clear()
```

Potential implementation:

```rescript
@scope("globalThis.localStorage")
external getItem: string => Null.t<string> = "getItem"

@scope("globalThis.sessionStorage")
external getItem: string => Null.t<string> = "getItem"
```

Length access needs special handling because `length` is a property, not a method.

Possible shape:

```rescript
@scope("globalThis.localStorage") @val
external length: int = "length"
```

Open questions:

- Should `LocalStorage` and `SessionStorage` be public modules in `rescript.json`?
- Should their implementations duplicate bindings or share an internal functor/helper?
- Should `Storage` retain all current tests while new tests cover the singleton modules?

## Navigator Module Itself

`Navigator.res` has two categories of bindings:

- Property accessors such as `clipboard`, `permissions`, `mediaDevices`, and `storage`.
- Methods on the singleton `navigator` such as `sendBeacon`, `getGamepads`, `requestMediaKeySystemAccess`, and `requestMIDIAccess`.

Recommended design:

- Keep property accessors receiver-based for users who have an explicit navigator value from a non-standard context.
- Add or convert direct methods for the singleton `navigator` methods.

Target direct API:

```rescript
Navigator.sendBeacon(~url, ~data=?)
Navigator.getGamepads()
Navigator.requestMediaKeySystemAccess(~keySystem, ~supportedConfigurations)
Navigator.requestMIDIAccess(~options=?)
```

Open question:

- Should global navigator property reads also be exposed directly, for example `Navigator.userAgent` or `Navigator.language`?

Recommended approach:

- Convert singleton methods first.
- Defer direct property reads until there is a clear naming convention for property values versus functions.

## Modules To Leave Receiver-Based

These modules should not be converted wholesale because they model normal instances:

- `Document`
- `Element`
- `Node`
- `Event`
- `EventTarget`
- `Request`
- `Response`
- `Headers`
- `FormData`
- `URLSearchParams`
- `MediaStream`
- `MediaStreamTrack`
- `IDBDatabase`
- `IDBObjectStore`
- `IDBIndex`
- `IDBTransaction`
- `Cache`
- `ServiceWorker`
- `ServiceWorkerRegistration`
- `AudioContext`
- `BaseAudioContext`
- `AudioNode`
- `AudioParam`
- `CanvasRenderingContext2D`
- `HTMLCanvasElement`
- `MutationObserver`
- `ResizeObserver`
- `IntersectionObserver`

This list is intentionally conservative. A module should move out of this category only when there is a single browser-owned global object that clearly owns its methods.

## EventTarget Handling

Some singleton objects are also event targets:

- `SpeechSynthesis`
- `Clipboard`
- `MediaDevices`
- `ServiceWorkerContainer`
- possibly `Performance`

Current modules often include:

```rescript
include EventTarget.Impl({type t = SomeTypes.someSingleton})
```

That exposes receiver-based event target methods such as:

```rescript
someSingleton->SomeModule.addEventListener(...)
```

There are three possible approaches:

1. Leave event target methods receiver-based and only convert API-specific methods.
2. Add scoped singleton wrappers for event target methods in each singleton module.
3. Generalize `EventTarget.Impl` so it can generate both receiver-based and scoped singleton bindings.

Recommended first implementation:

- Use option 1.
- Convert only API-specific methods first.
- Add direct event target wrappers later if tests or docs show a strong need.

Rationale:

- It avoids duplicating a large event target surface in the first migration.
- It keeps the main access-shape change small enough to review.
- It preserves a path for explicit event target values.

## Compatibility Strategy

This is a breaking public API change for converted modules because functions lose their receiver argument.

Possible compatibility options:

1. Direct replacement only.
2. Keep deprecated receiver-based functions under old names.
3. Keep receiver-based variants under explicit names such as `nowOn`, `openOn`, or `readTextOn`.

Recommended approach:

- Use direct replacement for modules where the receiver was only exposed through a singleton global.
- Add compatibility wrappers only when there is evidence that arbitrary instances are useful or tests require them.
- Document the migration pattern in release notes:

```rescript
// Before
DomGlobal.performance->Performance.now()

// After
Performance.now()
```

## Implementation Phases

### Phase 1: Confirm Scope Syntax

Before changing the full surface, add or temporarily compile a small set of representative scoped bindings:

- `@scope("globalThis.crypto")`
- `@scope("globalThis.performance")`
- `@scope("globalThis.navigator.clipboard")`
- `@scope("globalThis.crypto.subtle")`
- property access through `@scope("globalThis.localStorage")` if `LocalStorage` is approved

Verification:

- `npm run build`
- inspect generated JavaScript for representative modules
- confirm generated JavaScript reads from `globalThis.<api>`, not from a bare global

### Phase 2: Convert Direct Global Singletons

Convert the lowest-risk direct globals:

- `Crypto`
- `Performance`
- `History`
- `IDBFactory`
- `CacheStorage`
- `SpeechSynthesis`
- `CustomElementRegistry`

Update tests or add compile-only test coverage for intended usage.

### Phase 3: Convert Navigator-Owned Singletons

Convert nested navigator-owned modules:

- `Clipboard`
- `CredentialsContainer`
- `Geolocation`
- `MediaCapabilities`
- `MediaDevices`
- `MediaSession`
- `Permissions`
- `WakeLock`
- `ServiceWorkerContainer`
- `StorageManager`
- `LockManager`

Update tests with direct `Module.method(...)` calls.

### Phase 4: Resolve WebStorage

After agreeing on the public shape:

- Add `LocalStorage.res`
- Add `SessionStorage.res`
- Add both modules to the `WebAPI.Storage` public list in `rescript.json`
- Keep `Storage.res` receiver-based
- Update WebStorage tests to cover direct singleton usage and generic receiver usage

### Phase 5: Documentation And Migration Notes

Update docs and examples:

- Replace `DomGlobal.<singleton>->Module.method(...)` examples.
- Add a short migration note for singleton access.
- Document the `globalThis` scoping policy and the reason for it.
- Keep examples for instance APIs unchanged.

### Phase 6: Global Accessor Cleanup

After all conversions:

- Search for stale `DomGlobal.<singleton>->` usages in tests and docs.
- Search for singleton modules still accepting their singleton receiver as the first argument.
- Remove redundant singleton values from `DomGlobal` when the direct module now covers the intended usage.
- Audit `Window` and remove redundant singleton accessors that only duplicate global singleton module access.
- Audit `Document` and remove redundant paths to singleton APIs if any exist.
- Keep raw values only when there is a concrete multi-instance use case or the value itself is useful.
- If a raw value is kept, document why it remains receiver-based or value-based.

The cleanup bias should be removal. `DomGlobal`, `Window`, and `Document` should not remain as alternate routes to APIs that now have direct `globalThis`-scoped modules.

Likely `DomGlobal` removal candidates after conversion:

- `crypto`
- `performance`
- `history`
- `indexedDB`
- `caches`
- `speechSynthesis`
- `customElements`
- `localStorage`, if `LocalStorage` is added
- `sessionStorage`, if `SessionStorage` is added

Likely `Window` removal candidates mirror the same singleton properties when they only provide another route to the current realm's singleton:

- `window->Window.crypto`
- `window->Window.performance`
- `window->Window.history`
- `window->Window.indexedDB`
- `window->Window.caches`
- `window->Window.speechSynthesis`
- `window->Window.customElements`
- `window->Window.localStorage`, if `LocalStorage` is added
- `window->Window.sessionStorage`, if `SessionStorage` is added

Keep a `Window` accessor only when supporting explicit alternate `Window` values is a deliberate use case, for example an iframe or popup window. Do not keep it solely as a compatibility path to the current global singleton.

`Document` should stay mostly receiver-based because documents are real instances. The cleanup pass should only remove `Document` shortcuts that exist to reach the current global document or another singleton indirectly. Any direct global-document convenience should use `globalThis.document` explicitly and should be documented as current-document-only.

Likely `Navigator` property cleanup candidates depend on whether explicit navigator values remain supported:

- `clipboard`
- `credentials`
- `geolocation`
- `mediaCapabilities`
- `mediaDevices`
- `mediaSession`
- `permissions`
- `wakeLock`
- `serviceWorker`
- `storage`
- `locks`

## Testing Plan

Add or update tests to compile these representative usages:

```rescript
Crypto.randomUUID()
Crypto.getRandomValuesFromUint8Array(Uint8Array.fromArray([1, 2, 3]))

Performance.now()
Performance.mark(~markName="start")
Performance.clearMarks()

History.back()
History.pushState(~data=JSON.Encode.null, ~unused="")

IDBFactory.open_(~name="test-db")
IDBFactory.databases()

CacheStorage.open_("test-cache")
CacheStorage.keys()

Clipboard.readText()
Clipboard.writeText("hello")

Permissions.query(descriptor)

MediaDevices.enumerateDevices()
StorageManager.estimate()
LockManager.query()
```

Where runtime availability is unreliable in the test environment, prefer compile-only tests or guard runtime calls behind feature checks.

Existing WebStorage tests should be updated after the `LocalStorage` and `SessionStorage` decision.

## Verification Commands

Run after each phase:

```sh
npm run build
npm test
```

Run before finalizing:

```sh
npm run format:check
```

If formatting is expected to rewrite generated or hand-written files, run:

```sh
npm run format
```

## Search Checklist

Use these searches to find remaining old-style singleton usage:

```sh
grep -RIn "DomGlobal.crypto->" src tests docs
grep -RIn "DomGlobal.performance->" src tests docs
grep -RIn "DomGlobal.history->" src tests docs
grep -RIn "DomGlobal.indexedDB->" src tests docs
grep -RIn "DomGlobal.caches->" src tests docs
grep -RIn "DomGlobal.speechSynthesis->" src tests docs
grep -RIn "DomGlobal.navigator->Navigator" src tests docs
```

Use these searches to find singleton modules that still take explicit receivers:

```sh
grep -RIn "external .*PerformanceTypes.performance" src/Performance
grep -RIn "external .*HistoryTypes.history" src/History
grep -RIn "external .*IndexedDbTypes.idbFactory" src/IndexedDB
grep -RIn "external .*WebWorkersTypes.cacheStorage" src/WebWorkers
grep -RIn "external .*WebSpeechTypes.speechSynthesis" src/WebSpeech
grep -RIn "external .*ClipboardTypes.clipboard" src/Clipboard
grep -RIn "external .*PermissionsTypes.permissions" src/Permissions
```

Use these searches to catch bare singleton scopes that should be rooted at `globalThis`:

```sh
grep -RIn '@scope("crypto")' src tests docs
grep -RIn '@scope("performance")' src tests docs
grep -RIn '@scope("history")' src tests docs
grep -RIn '@scope("indexedDB")' src tests docs
grep -RIn '@scope("caches")' src tests docs
grep -RIn '@scope(("navigator"' src tests docs
```

Use these searches during the cleanup pass:

```sh
grep -RIn "external crypto:" src/DOM
grep -RIn "external performance:" src/DOM
grep -RIn "external history:" src/DOM
grep -RIn "external indexedDB:" src/DOM
grep -RIn "external caches:" src/DOM
grep -RIn "external speechSynthesis:" src/DOM
grep -RIn "external customElements:" src/DOM
grep -RIn "external localStorage:" src/DOM
grep -RIn "external sessionStorage:" src/DOM
```

## Risks

- Over-converting instance APIs would remove useful pipe-based usage.
- `globalThis`-rooted `@scope` syntax must be verified against generated JavaScript before large-scale conversion.
- Event target support may feel inconsistent if API methods become direct but event methods remain receiver-based.
- WebStorage can become confusing if `Storage` is made direct without distinguishing `localStorage` from `sessionStorage`.
- Removing raw `Window`, `Document`, or `DomGlobal` accessors too aggressively could break legitimate multi-window or explicit-value use cases.
- Some APIs may not exist in all runtimes used by tests, so runtime tests need guards.

## Open Decisions

- Should `SubtleCrypto` become direct-only or keep receiver-based compatibility?
- Should singleton event target methods get direct wrappers in this migration?
- Should `Navigator` expose direct global property reads such as `Navigator.userAgent`?
- Should `CustomElementRegistry` keep its current module name or gain a `CustomElements` alias?
- Should WebStorage add public `LocalStorage` and `SessionStorage` modules?
- Should compatibility wrappers exist for any converted modules?
- Which `DomGlobal`, `Window`, and `Document` singleton accessors have a concrete reason to remain after direct `globalThis`-scoped modules exist?

## Recommended Initial Scope

The first implementation should convert only:

- `Crypto`
- `SubtleCrypto`
- `Performance`
- `History`
- `IDBFactory`
- `CacheStorage`
- `Clipboard`
- `Permissions`

This covers direct globals and one nested navigator-owned API without touching the more ambiguous WebStorage and event-heavy surfaces. Once this compiles and tests cleanly, continue with the remaining navigator-owned modules.
