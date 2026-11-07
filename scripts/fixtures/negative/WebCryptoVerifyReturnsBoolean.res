@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let subtle = crypto.subtle
let data =
  WebAPI.SubtleCrypto.binaryDataFromUint8Array(Uint8Array.fromArray([65, 66, 67]))
let key = await WebAPI.SubtleCrypto.generateKeySymmetric(
  subtle,
  ~hash={name: "SHA-256"},
  ~length=256,
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.verifyUsage],
)
let signature: ArrayBuffer.t = %raw(`new ArrayBuffer(32)`)
let _verified: JSON.t = await subtle->WebAPI.SubtleCrypto.verify(
  ~algorithm={name: "HMAC"},
  ~key,
  ~signature=WebAPI.SubtleCrypto.binaryDataFromArrayBuffer(signature),
  ~data,
)
