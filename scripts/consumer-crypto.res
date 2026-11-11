@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let subtle = WebAPI.Crypto.subtle(crypto)
let data =
  WebAPI.SubtleCrypto.binaryDataFromUint8Array(Uint8Array.fromArray([65, 66, 67]))

let digest: ArrayBuffer.t = await subtle->WebAPI.SubtleCrypto.digest(
  ~algorithm=WebAPI.SubtleCrypto.algorithmObject({name: "SHA-256"}),
  ~data,
)
let digestBytes: Uint8Array.t = %raw(`new Uint8Array(digest)`)
assert(%raw(`digestBytes instanceof Uint8Array && digestBytes.buffer === digest`))

let hmacKey: WebAPI.SubtleCrypto.cryptoKey = await subtle->WebAPI.SubtleCrypto.generateKeySymmetric(
  ~hash=WebAPI.SubtleCrypto.algorithmObject({name: "SHA-256"}),
  ~length=256,
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.signUsage, WebAPI.SubtleCrypto.verifyUsage],
)

let signature = await subtle->WebAPI.SubtleCrypto.sign(
  ~algorithm=WebAPI.SubtleCrypto.algorithmObject({name: "HMAC"}),
  ~key=hmacKey,
  ~data,
)
let verified: bool = await subtle->WebAPI.SubtleCrypto.verify(
  ~algorithm=WebAPI.SubtleCrypto.algorithmObject({name: "HMAC"}),
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
  ~algorithm=WebAPI.SubtleCrypto.algorithmObject({name: "ECDSA", hash: {name: "SHA-256"}}),
  ~key=keyPair.privateKey,
  ~data,
)

let pairVerified: bool = await subtle->WebAPI.SubtleCrypto.verify(
  ~algorithm=WebAPI.SubtleCrypto.algorithmObject({name: "ECDSA", hash: {name: "SHA-256"}}),
  ~key=keyPair.publicKey,
  ~signature=WebAPI.SubtleCrypto.binaryDataFromArrayBuffer(pairSignature),
  ~data,
)

let aesKeyData = Uint8Array.fromArray([
  0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
])->WebAPI.SubtleCrypto.binaryDataFromUint8Array
let aesKey: WebAPI.SubtleCrypto.cryptoKey = await subtle->WebAPI.SubtleCrypto.importKey(
  ~format=WebAPI.SubtleCrypto.rawKeyFormat,
  ~keyData=aesKeyData,
  ~algorithm=WebAPI.SubtleCrypto.algorithmObject({name: "AES-GCM", length: 128}),
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.encryptUsage, WebAPI.SubtleCrypto.decryptUsage],
)
let aesIv = Uint8Array.fromArray([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
  ->WebAPI.SubtleCrypto.binaryDataFromUint8Array
let aesAlgorithm = WebAPI.SubtleCrypto.algorithmObject({name: "AES-GCM", iv: aesIv, tagLength: 128})
let ciphertext: ArrayBuffer.t =
  await subtle->WebAPI.SubtleCrypto.encrypt(~algorithm=aesAlgorithm, ~key=aesKey, ~data)
let plaintext: ArrayBuffer.t =
  await subtle->WebAPI.SubtleCrypto.decrypt(~algorithm=aesAlgorithm, ~key=aesKey, ~data=WebAPI.SubtleCrypto.binaryDataFromArrayBuffer(ciphertext))
