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

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/encrypt)
*/
@send
external encrypt: (
  t,
  ~algorithm: algorithm,
  ~key: cryptoKey,
  ~data: ArrayBufferTypedArrayOrDataView.t,
) => promise<ArrayBuffer.t> = "encrypt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/decrypt)
*/
@send
external decrypt: (
  t,
  ~algorithm: algorithm,
  ~key: cryptoKey,
  ~data: ArrayBufferTypedArrayOrDataView.t,
) => promise<ArrayBuffer.t> = "decrypt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/sign)
*/
@send
external sign: (
  t,
  ~algorithm: algorithm,
  ~key: cryptoKey,
  ~data: ArrayBufferTypedArrayOrDataView.t,
) => promise<ArrayBuffer.t> = "sign"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/verify)
*/
@send
external verify: (
  t,
  ~algorithm: algorithm,
  ~key: cryptoKey,
  ~signature: ArrayBufferTypedArrayOrDataView.t,
  ~data: ArrayBufferTypedArrayOrDataView.t,
) => promise<bool> = "verify"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/digest)
*/
@send
external digest: (
  t,
  ~algorithm: algorithm,
  ~data: ArrayBufferTypedArrayOrDataView.t,
) => promise<ArrayBuffer.t> = "digest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
*/
@send
external generateKey: (
  t,
  ~algorithm: algorithm,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
) => promise<unknown> = "generateKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/generateKey)
*/
@send
external generateKey2: (
  t,
  ~algorithm: string,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
) => promise<unknown> = "generateKey"

let generateKeySymmetric = (
  subtle: t,
  ~hash: algorithmIdentifier,
  ~length: int,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
): promise<cryptoKey> => {
  let _ = (subtle, hash, length, extractable, keyUsages)
  %raw(`subtle.generateKey({name: "HMAC", hash, length}, extractable, keyUsages)`)
}

/**
Generates an ECDSA public/private key pair. The fixed algorithm guarantees the native result shape.
*/
let generateEcdsaKeyPair = (
  subtle: t,
  ~namedCurve: string,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
): promise<cryptoKeyPair> => {
  let _ = (subtle, namedCurve, extractable, keyUsages)
  %raw(`subtle.generateKey({name: "ECDSA", namedCurve}, extractable, keyUsages)`)
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveKey)
*/
@send
external deriveKey: (
  t,
  ~algorithm: algorithm,
  ~baseKey: cryptoKey,
  ~derivedKeyType: algorithm,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
) => promise<cryptoKey> = "deriveKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
*/
@send
external deriveBits: (
  t,
  ~algorithm: algorithm,
  ~baseKey: cryptoKey,
  ~length: int=?,
) => promise<ArrayBuffer.t> = "deriveBits"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/deriveBits)
*/
@send
external deriveBits2: (
  t,
  ~algorithm: string,
  ~baseKey: cryptoKey,
  ~length: int=?,
) => promise<ArrayBuffer.t> = "deriveBits"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/importKey)
*/
@send
external importKey: (
  t,
  ~format: keyFormat,
  ~keyData: ArrayBufferTypedArrayOrDataView.t,
  ~algorithm: algorithm,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
) => promise<cryptoKey> = "importKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/exportKey)
*/
@send
external exportKey: (t, ~format: keyFormat, ~key: cryptoKey) => promise<unknown> = "exportKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
*/
@send
external wrapKey: (
  t,
  ~format: keyFormat,
  ~key: cryptoKey,
  ~wrappingKey: cryptoKey,
  ~wrapAlgorithm: algorithm,
) => promise<ArrayBuffer.t> = "wrapKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/wrapKey)
*/
@send
external wrapKey2: (
  t,
  ~format: keyFormat,
  ~key: cryptoKey,
  ~wrappingKey: cryptoKey,
  ~wrapAlgorithm: string,
) => promise<ArrayBuffer.t> = "wrapKey"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SubtleCrypto/unwrapKey)
*/
@send
external unwrapKey: (
  t,
  ~format: keyFormat,
  ~wrappedKey: ArrayBufferTypedArrayOrDataView.t,
  ~unwrappingKey: cryptoKey,
  ~unwrapAlgorithm: algorithm,
  ~unwrappedKeyAlgorithm: algorithm,
  ~extractable: bool,
  ~keyUsages: array<keyUsage>,
) => promise<cryptoKey> = "unwrapKey"

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
external exportKeyBinary: (t, ~format: binaryKeyFormat, ~key: cryptoKey) => promise<ArrayBuffer.t> =
  "exportKey"

@send
external exportKeyJwk: (t, ~format: jwkKeyFormat, ~key: cryptoKey) => promise<JSON.t> = "exportKey"
