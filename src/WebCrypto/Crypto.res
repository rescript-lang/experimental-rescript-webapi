open WebCryptoTypes

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)

TODO: the input type for this should be stricter than just an array<'a>'
It should be an integer-based TypedArray, that is one of: Int8Array, Uint8Array, Uint8ClampedArray, Int16Array, Uint16Array, Int32Array, Uint32Array, BigInt64Array, or BigUint64Array
*/
@scope("globalThis.crypto")
external getRandomValues: array<'t> => array<'t> = "getRandomValues"

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
