/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/encrypt)
*/
@send
external encrypt: (
  Types.subtleCrypto,
  ~algorithm: Types.algorithmIdentifier,
  ~key: Types.cryptoKey,
  ~data: WebApiPrelude.ArrayBufferTypedArrayOrDataView.t,
) => promise<ArrayBuffer.t> = "encrypt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/decrypt)
*/
@send
external decrypt: (
  Types.subtleCrypto,
  ~algorithm: Types.algorithmIdentifier,
  ~key: Types.cryptoKey,
  ~data: WebApiPrelude.ArrayBufferTypedArrayOrDataView.t,
) => promise<ArrayBuffer.t> = "decrypt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/sign)
*/
@send
external sign: (
  Types.subtleCrypto,
  ~algorithm: Types.algorithmIdentifier,
  ~key: Types.cryptoKey,
  ~data: WebApiPrelude.ArrayBufferTypedArrayOrDataView.t,
) => promise<JSON.t> = "sign"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/verify)
*/
@send
external verify: (
  Types.subtleCrypto,
  ~algorithm: Types.algorithmIdentifier,
  ~key: Types.cryptoKey,
  ~signature: WebApiPrelude.ArrayBufferTypedArrayOrDataView.t,
  ~data: WebApiPrelude.ArrayBufferTypedArrayOrDataView.t,
) => promise<JSON.t> = "verify"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/digest)
*/
@send
external digest: (
  Types.subtleCrypto,
  ~algorithm: Types.algorithmIdentifier,
  ~data: WebApiPrelude.ArrayBufferTypedArrayOrDataView.t,
) => promise<JSON.t> = "digest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
*/
@send
external generateKey: (
  Types.subtleCrypto,
  ~algorithm: Types.algorithm,
  ~extractable: bool,
  ~keyUsages: array<Types.keyUsage>,
) => promise<JSON.t> = "generateKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
*/
@send
external generateKey2: (
  Types.subtleCrypto,
  ~algorithm: string,
  ~extractable: bool,
  ~keyUsages: array<Types.keyUsage>,
) => promise<JSON.t> = "generateKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveKey)
*/
@send
external deriveKey: (
  Types.subtleCrypto,
  ~algorithm: Types.algorithmIdentifier,
  ~baseKey: Types.cryptoKey,
  ~derivedKeyType: Types.algorithmIdentifier,
  ~extractable: bool,
  ~keyUsages: array<Types.keyUsage>,
) => promise<JSON.t> = "deriveKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
*/
@send
external deriveBits: (
  Types.subtleCrypto,
  ~algorithm: Types.algorithm,
  ~baseKey: Types.cryptoKey,
  ~length: int=?,
) => promise<ArrayBuffer.t> = "deriveBits"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
*/
@send
external deriveBits2: (
  Types.subtleCrypto,
  ~algorithm: string,
  ~baseKey: Types.cryptoKey,
  ~length: int=?,
) => promise<ArrayBuffer.t> = "deriveBits"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/importKey)
*/
@send
external importKey: (
  Types.subtleCrypto,
  ~format: unknown,
  ~keyData: WebApiPrelude.ArrayBufferTypedArrayOrDataView.t,
  ~algorithm: Types.algorithmIdentifier,
  ~extractable: bool,
  ~keyUsages: array<Types.keyUsage>,
) => promise<Types.cryptoKey> = "importKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/exportKey)
*/
@send
external exportKey: (
  Types.subtleCrypto,
  ~format: Types.keyFormat,
  ~key: Types.cryptoKey,
) => promise<JSON.t> = "exportKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
*/
@send
external wrapKey: (
  Types.subtleCrypto,
  ~format: Types.keyFormat,
  ~key: Types.cryptoKey,
  ~wrappingKey: Types.cryptoKey,
  ~wrapAlgorithm: Types.algorithm,
) => promise<JSON.t> = "wrapKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
*/
@send
external wrapKey2: (
  Types.subtleCrypto,
  ~format: Types.keyFormat,
  ~key: Types.cryptoKey,
  ~wrappingKey: Types.cryptoKey,
  ~wrapAlgorithm: string,
) => promise<JSON.t> = "wrapKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/unwrapKey)
*/
@send
external unwrapKey: (
  Types.subtleCrypto,
  ~format: Types.keyFormat,
  ~wrappedKey: WebApiPrelude.ArrayBufferTypedArrayOrDataView.t,
  ~unwrappingKey: Types.cryptoKey,
  ~unwrapAlgorithm: Types.algorithmIdentifier,
  ~unwrappedKeyAlgorithm: Types.algorithmIdentifier,
  ~extractable: bool,
  ~keyUsages: array<Types.keyUsage>,
) => promise<Types.cryptoKey> = "unwrapKey"
