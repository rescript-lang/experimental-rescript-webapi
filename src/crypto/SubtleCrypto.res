/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/encrypt)
*/
@send
external encrypt: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: WebCryptoTypes.algorithm,
  ~key: WebCryptoTypes.cryptoKey,
  ~data: ArrayBufferTypedArrayOrDataView.t,
) => promise<ArrayBuffer.t> = "encrypt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/decrypt)
*/
@send
external decrypt: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: WebCryptoTypes.algorithm,
  ~key: WebCryptoTypes.cryptoKey,
  ~data: ArrayBufferTypedArrayOrDataView.t,
) => promise<ArrayBuffer.t> = "decrypt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/sign)
*/
@send
external sign: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: WebCryptoTypes.algorithm,
  ~key: WebCryptoTypes.cryptoKey,
  ~data: ArrayBufferTypedArrayOrDataView.t,
) => promise<ArrayBuffer.t> = "sign"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/verify)
*/
@send
external verify: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: WebCryptoTypes.algorithm,
  ~key: WebCryptoTypes.cryptoKey,
  ~signature: ArrayBufferTypedArrayOrDataView.t,
  ~data: ArrayBufferTypedArrayOrDataView.t,
) => promise<bool> = "verify"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/digest)
*/
@send
external digest: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: WebCryptoTypes.algorithm,
  ~data: ArrayBufferTypedArrayOrDataView.t,
) => promise<ArrayBuffer.t> = "digest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
*/
@send
external generateKey: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: WebCryptoTypes.algorithm,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<unknown> = "generateKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
*/
@send
external generateKey2: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: string,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<unknown> = "generateKey"

@send
external generateKeySymmetric: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: WebCryptoTypes.algorithm,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<WebCryptoTypes.cryptoKey> = "generateKey"

/**
Generates a public/private key pair. Use for algorithms whose native result is a CryptoKeyPair.
*/
@send
external generateKeyPair: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: WebCryptoTypes.algorithm,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<WebCryptoTypes.cryptoKeyPair> = "generateKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveKey)
*/
@send
external deriveKey: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: WebCryptoTypes.algorithm,
  ~baseKey: WebCryptoTypes.cryptoKey,
  ~derivedKeyType: WebCryptoTypes.algorithm,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<WebCryptoTypes.cryptoKey> = "deriveKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
*/
@send
external deriveBits: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: WebCryptoTypes.algorithm,
  ~baseKey: WebCryptoTypes.cryptoKey,
  ~length: int=?,
) => promise<ArrayBuffer.t> = "deriveBits"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
*/
@send
external deriveBits2: (
  WebCryptoTypes.subtleCrypto,
  ~algorithm: string,
  ~baseKey: WebCryptoTypes.cryptoKey,
  ~length: int=?,
) => promise<ArrayBuffer.t> = "deriveBits"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/importKey)
*/
@send
external importKey: (
  WebCryptoTypes.subtleCrypto,
  ~format: WebCryptoTypes.keyFormat,
  ~keyData: ArrayBufferTypedArrayOrDataView.t,
  ~algorithm: WebCryptoTypes.algorithm,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<WebCryptoTypes.cryptoKey> = "importKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/exportKey)
*/
@send
external exportKey: (
  WebCryptoTypes.subtleCrypto,
  ~format: WebCryptoTypes.keyFormat,
  ~key: WebCryptoTypes.cryptoKey,
) => promise<unknown> = "exportKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
*/
@send
external wrapKey: (
  WebCryptoTypes.subtleCrypto,
  ~format: WebCryptoTypes.keyFormat,
  ~key: WebCryptoTypes.cryptoKey,
  ~wrappingKey: WebCryptoTypes.cryptoKey,
  ~wrapAlgorithm: WebCryptoTypes.algorithm,
) => promise<ArrayBuffer.t> = "wrapKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
*/
@send
external wrapKey2: (
  WebCryptoTypes.subtleCrypto,
  ~format: WebCryptoTypes.keyFormat,
  ~key: WebCryptoTypes.cryptoKey,
  ~wrappingKey: WebCryptoTypes.cryptoKey,
  ~wrapAlgorithm: string,
) => promise<ArrayBuffer.t> = "wrapKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/unwrapKey)
*/
@send
external unwrapKey: (
  WebCryptoTypes.subtleCrypto,
  ~format: WebCryptoTypes.keyFormat,
  ~wrappedKey: ArrayBufferTypedArrayOrDataView.t,
  ~unwrappingKey: WebCryptoTypes.cryptoKey,
  ~unwrapAlgorithm: WebCryptoTypes.algorithm,
  ~unwrappedKeyAlgorithm: WebCryptoTypes.algorithm,
  ~extractable: bool,
  ~keyUsages: array<WebCryptoTypes.keyUsage>,
) => promise<WebCryptoTypes.cryptoKey> = "unwrapKey"
type t = WebCryptoTypes.subtleCrypto
type binaryData = ArrayBufferTypedArrayOrDataView.t
type keyType = WebCryptoTypes.keyType
type keyUsage = WebCryptoTypes.keyUsage
type keyFormat = WebCryptoTypes.keyFormat
type binaryKeyFormat =
  | @as("raw") Raw
  | @as("pkcs8") Pkcs8
  | @as("spki") Spki
type jwkKeyFormat = | @as("jwk") Jwk
type keyAlgorithm = WebCryptoTypes.keyAlgorithm
type algorithmIdentifier = WebCryptoTypes.algorithmIdentifier
type algorithm = WebCryptoTypes.algorithm
type cryptoKey = WebCryptoTypes.cryptoKey
type cryptoKeyPair = WebCryptoTypes.cryptoKeyPair

let decryptUsage = WebCryptoTypes.Decrypt
let deriveBitsUsage = WebCryptoTypes.DeriveBits
let deriveKeyUsage = WebCryptoTypes.DeriveKey
let encryptUsage = WebCryptoTypes.Encrypt
let signUsage = WebCryptoTypes.Sign
let unwrapKeyUsage = WebCryptoTypes.UnwrapKey
let verifyUsage = WebCryptoTypes.Verify
let wrapKeyUsage = WebCryptoTypes.WrapKey

external binaryDataFromUint8Array: Uint8Array.t => binaryData = "%identity"
external binaryDataFromArrayBuffer: ArrayBuffer.t => binaryData = "%identity"
external binaryDataFromDataView: DataView.t => binaryData = "%identity"

@send
external exportKeyBinary: (
  WebCryptoTypes.subtleCrypto,
  ~format: binaryKeyFormat,
  ~key: WebCryptoTypes.cryptoKey,
) => promise<ArrayBuffer.t> = "exportKey"

@send
external exportKeyJwk: (
  WebCryptoTypes.subtleCrypto,
  ~format: jwkKeyFormat,
  ~key: WebCryptoTypes.cryptoKey,
) => promise<JSON.t> = "exportKey"
