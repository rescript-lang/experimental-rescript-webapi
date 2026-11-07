# Changelog

This file records user-visible changes. Alpha releases may contain breaking changes, and
changes may occur between alpha versions. Version numbers and publication-channel instructions
are maintained by the release workflow; see the [alpha release readiness tracker](https://github.com/rescript-lang/experimental-rescript-webapi/issues/382).

## 1.0.0-alpha.1 (candidate)

Planned first release in the `1.0.0-alpha.N` series. ReScript `13.0.0-alpha.5` is the tested
compiler baseline. This alpha is not a stable API; review the migration notes below before
upgrading from earlier prereleases. The release workflow is the source of truth for actual
versioning and publication.

### Migration notes

- WebSocket sends and worker `Request` fetches now preserve their native receiver (`this`) rather
  than calling receiver-bound methods unbound.
- `WebAPI.Request.bytes`, `WebAPI.Response.bytes`, `WebAPI.Blob.bytes`,
  `WebAPI.Blob.stream`, and `WebAPI.SafeFetch.bytes` expose
  native `Uint8Array.t` values or chunks instead of `array<int>`. Use the typed-array API
  directly; the bytes are not copied into a ReScript integer array.
- `ResizeObserver` callbacks now receive `(entries, observer)` as two arguments rather than a
  curried callback.
- Web Audio analyser float buffers, `AudioBuffer` channel and copy APIs, and Biquad/IIR filter
  frequency-response buffers use `Float32Array.t`; analyser byte buffers use `Uint8Array.t`.
  `DOMMatrix` and `DOMMatrixReadOnly` Float32 conversions also use `Float32Array.t`. Use native
  typed-array values rather than ordinary ReScript arrays for these calls.
- `Element.closest` returns `Null.t<DOMTree.element>` and is no longer polymorphic. Narrow the
  result with the relevant public classifier when a more specific HTML interface is required.
- WebCrypto signatures now reflect native results: `sign` and `digest` return `ArrayBuffer.t`,
  `verify` returns `bool`, and `deriveKey` returns `WebAPI.SubtleCrypto.cryptoKey`. Key and
  algorithm support types are available through `WebAPI.SubtleCrypto`.
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

For the intended installation, compiler range, runtime/browser checks, and known limitations,
see the [project status](https://rescript-lang.github.io/experimental-rescript-webapi/project-status/)
and [API surface guide](https://rescript-lang.github.io/experimental-rescript-webapi/api-surface/).
