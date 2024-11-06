@@warning("-30")

open Prelude

type keyType =
  | @as("private") Private
  | @as("public") Public
  | @as("secret") Secret

type keyUsage =
  | @as("decrypt") Decrypt
  | @as("deriveBits") DeriveBits
  | @as("deriveKey") DeriveKey
  | @as("encrypt") Encrypt
  | @as("sign") Sign
  | @as("unwrapKey") UnwrapKey
  | @as("verify") Verify
  | @as("wrapKey") WrapKey

type keyFormat =
  | @as("jwk") Jwk
  | @as("pkcs8") Pkcs8
  | @as("raw") Raw
  | @as("spki") Spki

type keyAlgorithm = {mutable name: string}

/**
This Web Crypto API interface provides a number of low-level cryptographic functions. It is accessed via the Crypto.subtle properties available in a window context (via Window.crypto).
[See SubtleCrypto on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto)
*/
type subtleCrypto = {}

/**
Basic cryptography features available in the current context. It allows access to a cryptographically strong random number generator and to cryptographic primitives.
[See Crypto on MDN](https://developer.mozilla.org/docs/Web/API/Crypto)
*/
type crypto = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/subtle)
    */
  subtle: subtleCrypto,
}

/**
The CryptoKey dictionary of the Web Crypto API represents a cryptographic key.
[See CryptoKey on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey)
*/
type cryptoKey = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey/type)
    */
  @as("type")
  type_: keyType,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey/extractable)
    */
  extractable: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey/algorithm)
    */
  algorithm: keyAlgorithm,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CryptoKey/usages)
    */
  usages: array<keyUsage>,
}

type algorithmIdentifier = any

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

module Crypto = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/getRandomValues)
    */
  @send
  external getRandomValues: (crypto, 't) => 't = "getRandomValues"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Crypto/randomUUID)
    */
  @send
  external randomUUID: crypto => string = "randomUUID"
}
