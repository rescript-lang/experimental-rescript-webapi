@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let subtle = crypto.subtle
let data =
  WebAPI.SubtleCrypto.binaryDataFromUint8Array(Uint8Array.fromArray([65, 66, 67]))

let digest: ArrayBuffer.t = await subtle->WebAPI.SubtleCrypto.digest(~algorithm={name: "SHA-256"}, ~data)

let hmacKey: WebAPI.SubtleCrypto.cryptoKey = await subtle->WebAPI.SubtleCrypto.generateKeySymmetric(
  ~hash={name: "SHA-256"},
  ~length=256,
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.signUsage, WebAPI.SubtleCrypto.verifyUsage],
)

let signature = await subtle->WebAPI.SubtleCrypto.sign(~algorithm={name: "HMAC"}, ~key=hmacKey, ~data)
let verified: bool = await subtle->WebAPI.SubtleCrypto.verify(
  ~algorithm={name: "HMAC"},
  ~key=hmacKey,
  ~signature=WebAPI.SubtleCrypto.binaryDataFromArrayBuffer(signature),
  ~data,
)

let rawKey: ArrayBuffer.t = await subtle->WebAPI.SubtleCrypto.exportKeyBinary(
  ~format=WebAPI.SubtleCrypto.Raw,
  ~key=hmacKey,
)
let jwk: JSON.t = await subtle->WebAPI.SubtleCrypto.exportKeyJwk(
  ~format=WebAPI.SubtleCrypto.Jwk,
  ~key=hmacKey,
)

let keyPair: WebAPI.SubtleCrypto.cryptoKeyPair = await subtle->WebAPI.SubtleCrypto.generateEcdsaKeyPair(
  ~namedCurve="P-256",
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.signUsage, WebAPI.SubtleCrypto.verifyUsage],
)

let pairSignature = await subtle->WebAPI.SubtleCrypto.sign(
  ~algorithm={name: "ECDSA", hash: {name: "SHA-256"}},
  ~key=keyPair.privateKey,
  ~data,
)

let pairVerified: bool = await subtle->WebAPI.SubtleCrypto.verify(
  ~algorithm={name: "ECDSA", hash: {name: "SHA-256"}},
  ~key=keyPair.publicKey,
  ~signature=WebAPI.SubtleCrypto.binaryDataFromArrayBuffer(pairSignature),
  ~data,
)
