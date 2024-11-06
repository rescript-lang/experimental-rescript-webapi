@@warning("-44")
@@warning("-33")
open WebCryptoAPI
open Prelude

module SubtleCrypto = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/encrypt)
    */
  @send
  external encrypt: (
    subtleCrypto,
    algorithmIdentifier,
    cryptoKey,
    bufferSource,
  ) => Promise.t<ArrayBuffer.t> = "encrypt"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/decrypt)
    */
  @send
  external decrypt: (
    subtleCrypto,
    algorithmIdentifier,
    cryptoKey,
    bufferSource,
  ) => Promise.t<ArrayBuffer.t> = "decrypt"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/sign)
    */
  @send
  external sign: (subtleCrypto, algorithmIdentifier, cryptoKey, bufferSource) => Promise.t<any> =
    "sign"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/verify)
    */
  @send
  external verify: (
    subtleCrypto,
    algorithmIdentifier,
    cryptoKey,
    bufferSource,
    bufferSource,
  ) => Promise.t<any> = "verify"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/digest)
    */
  @send
  external digest: (subtleCrypto, algorithmIdentifier, bufferSource) => Promise.t<any> = "digest"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
    */
  @send
  external generateKey: (
    subtleCrypto,
    algorithmIdentifier,
    bool,
    array<keyUsage>,
  ) => Promise.t<any> = "generateKey"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveKey)
    */
  @send
  external deriveKey: (
    subtleCrypto,
    algorithmIdentifier,
    cryptoKey,
    algorithmIdentifier,
    bool,
    array<keyUsage>,
  ) => Promise.t<any> = "deriveKey"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
    */
  @send
  external deriveBits: (
    subtleCrypto,
    algorithmIdentifier,
    cryptoKey,
    int,
  ) => Promise.t<ArrayBuffer.t> = "deriveBits"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/importKey)
    */
  @send
  external importKey: (
    subtleCrypto,
    any,
    bufferSource,
    algorithmIdentifier,
    bool,
    array<keyUsage>,
  ) => Promise.t<cryptoKey> = "importKey"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/exportKey)
    */
  @send
  external exportKey: (subtleCrypto, keyFormat, cryptoKey) => Promise.t<any> = "exportKey"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
    */
  @send
  external wrapKey: (
    subtleCrypto,
    keyFormat,
    cryptoKey,
    cryptoKey,
    algorithmIdentifier,
  ) => Promise.t<any> = "wrapKey"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/unwrapKey)
    */
  @send
  external unwrapKey: (
    subtleCrypto,
    keyFormat,
    bufferSource,
    cryptoKey,
    algorithmIdentifier,
    algorithmIdentifier,
    bool,
    array<keyUsage>,
  ) => Promise.t<cryptoKey> = "unwrapKey"
}
