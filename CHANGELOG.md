# Changelog

This file records user-visible changes. Alpha releases may contain breaking changes, and
changes may occur between alpha versions. Version numbers and publication-channel instructions
are maintained by the release workflow; see the [alpha release readiness tracker](https://github.com/rescript-lang/experimental-rescript-webapi/issues/382).

## 1.0.0-alpha.1 (candidate)

Planned first release in the `1.0.0-alpha.N` series. ReScript `13.0.0-alpha.7` is the tested
compiler baseline. This alpha is not a stable API; review the migration notes below before
upgrading from earlier prereleases. The release workflow is the source of truth for actual
versioning and publication.

### Migration notes

- The minimum supported ReScript compiler is now `13.0.0-alpha.7` (peer range
  `>=13.0.0-alpha.7 <13.0.0`). Coercing a different type into a private record is now rejected
  by the compiler; use supported conversion helpers for native derived-to-base conversions.
  This does not make all native records package-wide private. Typed arrays now have distinct
  types: use their specific module operations, or explicitly upcast to `TypedArray.t` when a
  binding requires the generic type.
- ReScript `13.0.0-alpha.7` no longer supports Intel Macs (`darwin-x64`). This package's new
  compiler minimum therefore also excludes native compilation on Intel Macs.
- WebSocket sends and worker `Request` fetches now preserve their native receiver (`this`) rather
  than calling receiver-bound methods unbound.
- `WebAPI.Request.bytes`, `WebAPI.Response.bytes`, `WebAPI.Blob.bytes`,
  `WebAPI.Blob.stream`, and `WebAPI.SafeFetch.bytes` expose
  native `Uint8Array.t` values or chunks instead of `array<int>`. Use the typed-array API
  directly; the bytes are not copied into a ReScript integer array. `SafeFetch.bytes` keeps its
  existing result and response wrapper; only the byte payload changes.
- `BodyInit.fromReadableStream` and `Response.fromReadableStream` now require
  `ReadableStream.t<Uint8Array.t>` input. These HTTP-body adapters accept byte chunks, not arbitrary
  or string chunks; `ReadableStream` itself remains generic for other uses.
- `ResizeObserver` callbacks now receive `(entries, observer)` as two arguments rather than a
  curried callback.
- Web Audio analyser float buffers, `AudioBuffer` channel and copy APIs, and Biquad/IIR filter
  frequency-response buffers use `Float32Array.t`; analyser byte buffers use `Uint8Array.t`.
  `DOMMatrix` and `DOMMatrixReadOnly` Float32 conversions also use `Float32Array.t`. Use native
  typed-array values rather than ordinary ReScript arrays for these calls.
- `Element.closest` returns `Null.t<DOMTree.element>` and is no longer polymorphic. Narrow the
  result with the relevant public classifier when a more specific HTML interface is required.
- WebCrypto signatures now reflect native results: `sign` and `digest` return `ArrayBuffer.t`,
  `verify` returns `bool`, `deriveKey` returns `WebAPI.SubtleCrypto.cryptoKey`, and `deriveBits`
  and `wrapKey` return `ArrayBuffer.t`. Key and algorithm support types are available through
  `WebAPI.SubtleCrypto`. Use `algorithmString` for a native algorithm name and `algorithmObject`
  for parameter dictionaries such as AES-GCM's `iv` and `tagLength`; the object helper preserves
  typed-array values rather than copying them into a closed algorithm-name variant.
- Generic `SubtleCrypto.generateKey` and `generateKey2` now return `unknown` because the result
  depends on the algorithm. Use `generateKeySymmetric` for HMAC keys
  (`SubtleCrypto.cryptoKey`) or `generateEcdsaKeyPair` for ECDSA pairs
  (`SubtleCrypto.cryptoKeyPair`). Generic `exportKey` also returns `unknown`; use
  `exportKeyBinary` for `Raw`, `Pkcs8`, or `Spki` formats (`ArrayBuffer.t`), and
  `exportKeyJwk` for `Jwk` format (`JSON.t`).
- `DOMTree.element` no longer exposes a generic `className`. Specific HTML interfaces retain a
  string `className`; `SVGElement.t.className` is `SVGElement.svgAnimatedString` with
  `baseVal` and `animVal`.
- `CustomElementRegistry.define` takes a `DOM.customElementConstructor`; it does not take an
  element instance.
- Request destination, referrer-policy, and media `canPlayType` result types now include `Empty`
  for native empty-string values. `HTMLCanvasElement.toBlob` callbacks receive a
  `Null.t<WebAPI.Blob.t>` because the browser can return null (including for a zero-sized
  canvas). An `ifAvailable` Web Locks callback receives a nullable lock when the lock is
  unavailable. `IDBFactory.deleteDatabase` has an operation-specific `unit` result because the
  browser's successful result is `undefined`, not a database.
- `WebAPI.Notification.t` no longer contains a static permission field. Read that value through
  `WebAPI.Notification.permission`.
- Native browser-instance record construction and record-update copies are being restricted with
  private record views. Reads remain direct; writes to protected mutable properties require typed
  setters such as `canvas->WebAPI.HTMLCanvasElement.setWidth(640)` to avoid warning 111. ReScript
  `13.0.0-alpha.7` rejects ordinary explicit coercions (`:>`) into private records, including
  structural upcasts between distinct private-record types; use supported typed conversion helpers.
  Options, initializers, callback dictionaries, and plain data records remain public. This is a
  compile-time restriction, not a security boundary against unsafe casts or JavaScript fabrication.
- Native `asNode`/`asBlob`/event/audio upcasts now require concrete native receivers. Use the
  helpers on concrete modules; public `Impl` functors no longer export unrestricted identity casts.
- `FillStyle.toCanvasGradient`/`toCanvasPattern` and
  `IntersectionObserverRoot.toElement`/`toDocument` now return checked options. The checks recognize
  instances in the current JavaScript realm; alternatively use each module's `decode` function.
- Stream readers/writers and rendering-context placeholders have abstract identities rather than
  `unknown`. Performance entry lists are arrays of native entries. `NodeFilter.t` is a public
  `{acceptNode: node => int}` callback dictionary rather than a private empty record.
- `MessageEvent.make` returns a nullable payload (`t<Null.t<'t>>`) because omitted data defaults
  to null. `Navigator.requestMediaKeySystemAccess` returns the concrete native access type rather
  than a caller-selected type. Public media, DOM-node, and geometry setters preserve supported
  writes without private-field warnings.

For the intended installation, compiler range, runtime/browser checks, and known limitations,
see the [project status](https://rescript-lang.github.io/experimental-rescript-webapi/project-status/)
and [API surface guide](https://rescript-lang.github.io/experimental-rescript-webapi/api-surface/).
