open WebCryptoTypes

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)

Fills an integer-based TypedArray with cryptographically strong random values.
*/
@scope("globalThis.crypto")
external getRandomValuesFromInt8Array: Int8Array.t => Int8Array.t = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)

Fills an integer-based TypedArray with cryptographically strong random values.
*/
@scope("globalThis.crypto")
external getRandomValuesFromUint8Array: Uint8Array.t => Uint8Array.t = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)

Fills an integer-based TypedArray with cryptographically strong random values.
*/
@scope("globalThis.crypto")
external getRandomValuesFromUint8ClampedArray: Uint8ClampedArray.t => Uint8ClampedArray.t =
  "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)

Fills an integer-based TypedArray with cryptographically strong random values.
*/
@scope("globalThis.crypto")
external getRandomValuesFromInt16Array: Int16Array.t => Int16Array.t = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)

Fills an integer-based TypedArray with cryptographically strong random values.
*/
@scope("globalThis.crypto")
external getRandomValuesFromUint16Array: Uint16Array.t => Uint16Array.t = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)

Fills an integer-based TypedArray with cryptographically strong random values.
*/
@scope("globalThis.crypto")
external getRandomValuesFromInt32Array: Int32Array.t => Int32Array.t = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)

Fills an integer-based TypedArray with cryptographically strong random values.
*/
@scope("globalThis.crypto")
external getRandomValuesFromUint32Array: Uint32Array.t => Uint32Array.t = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)

Fills an integer-based TypedArray with cryptographically strong random values.
*/
@scope("globalThis.crypto")
external getRandomValuesFromBigInt64Array: BigInt64Array.t => BigInt64Array.t = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)

Fills an integer-based TypedArray with cryptographically strong random values.
*/
@scope("globalThis.crypto")
external getRandomValuesFromBigUint64Array: BigUint64Array.t => BigUint64Array.t = "getRandomValues"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/randomUUID)
```rescript
let uuid = Crypto.randomUUID()
```
*/
@scope("globalThis.crypto")
external randomUUID: unit => string = "randomUUID"

@scope("globalThis.crypto")
external subtle: subtleCrypto = "subtle"
