/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/encrypt)
*/
@scope("globalThis.crypto.subtle")
external encrypt: (
  ~algorithm: WebCryptoTypes.algorithmIdentifier,
  ~key: WebCryptoTypes.cryptoKey,
  ~data: ArrayBuffer.t,
) => promise<ArrayBuffer.t> = "encrypt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/decrypt)
*/
@scope("globalThis.crypto.subtle")
external decrypt: (
  ~algorithm: WebCryptoTypes.algorithmIdentifier,
  ~key: WebCryptoTypes.cryptoKey,
  ~data: ArrayBuffer.t,
) => promise<ArrayBuffer.t> = "decrypt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/sign)
*/
@scope("globalThis.crypto.subtle")
external sign: (
  ~algorithm: WebCryptoTypes.algorithmIdentifier,
  ~key: WebCryptoTypes.cryptoKey,
  ~data: ArrayBuffer.t,
) => promise<JSON.t> = "sign"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/verify)
*/
@scope("globalThis.crypto.subtle")
external verify: (
  ~algorithm: WebCryptoTypes.algorithmIdentifier,
  ~key: WebCryptoTypes.cryptoKey,
  ~signature: ArrayBuffer.t,
  ~data: ArrayBuffer.t,
) => promise<JSON.t> = "verify"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/digest)
*/
@scope("globalThis.crypto.subtle")
external digest: (
  ~algorithm: WebCryptoTypes.algorithmIdentifier,
  ~data: ArrayBuffer.t,
) => promise<JSON.t> = "digest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
*/
@scope("globalThis.crypto.subtle")
external generateKey: (
  ~algorithm: WebCryptoTypes.algorithm,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<JSON.t> = "generateKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
*/
@scope("globalThis.crypto.subtle")
external generateKey2: (
  ~algorithm: string,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<JSON.t> = "generateKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveKey)
*/
@scope("globalThis.crypto.subtle")
external deriveKey: (
  ~algorithm: WebCryptoTypes.algorithmIdentifier,
  ~baseKey: WebCryptoTypes.cryptoKey,
  ~derivedKeyType: WebCryptoTypes.algorithmIdentifier,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<JSON.t> = "deriveKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
*/
@scope("globalThis.crypto.subtle")
external deriveBits: (
  ~algorithm: WebCryptoTypes.algorithm,
  ~baseKey: WebCryptoTypes.cryptoKey,
  ~length: int=?,
) => promise<ArrayBuffer.t> = "deriveBits"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
*/
@scope("globalThis.crypto.subtle")
external deriveBits2: (
  ~algorithm: string,
  ~baseKey: WebCryptoTypes.cryptoKey,
  ~length: int=?,
) => promise<ArrayBuffer.t> = "deriveBits"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/importKey)
*/
@scope("globalThis.crypto.subtle")
external importKey: (
  ~format: unknown,
  ~keyData: ArrayBuffer.t,
  ~algorithm: WebCryptoTypes.algorithmIdentifier,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<WebCryptoTypes.cryptoKey> = "importKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/exportKey)
*/
@scope("globalThis.crypto.subtle")
external exportKey: (
  ~format: WebCryptoTypes.keyFormat,
  ~key: WebCryptoTypes.cryptoKey,
) => promise<JSON.t> = "exportKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
*/
@scope("globalThis.crypto.subtle")
external wrapKey: (
  ~format: WebCryptoTypes.keyFormat,
  ~key: WebCryptoTypes.cryptoKey,
  ~wrappingKey: WebCryptoTypes.cryptoKey,
  ~wrapAlgorithm: WebCryptoTypes.algorithm,
) => promise<JSON.t> = "wrapKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
*/
@scope("globalThis.crypto.subtle")
external wrapKey2: (
  ~format: WebCryptoTypes.keyFormat,
  ~key: WebCryptoTypes.cryptoKey,
  ~wrappingKey: WebCryptoTypes.cryptoKey,
  ~wrapAlgorithm: string,
) => promise<JSON.t> = "wrapKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/unwrapKey)
*/
@scope("globalThis.crypto.subtle")
external unwrapKey: (
  ~format: WebCryptoTypes.keyFormat,
  ~wrappedKey: ArrayBuffer.t,
  ~unwrappingKey: WebCryptoTypes.cryptoKey,
  ~unwrapAlgorithm: WebCryptoTypes.algorithmIdentifier,
  ~unwrappedKeyAlgorithm: WebCryptoTypes.algorithmIdentifier,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<WebCryptoTypes.cryptoKey> = "unwrapKey"
