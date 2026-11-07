@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let key = await WebAPI.SubtleCrypto.generateKeySymmetric(
  crypto.subtle,
  ~hash=WebAPI.SubtleCrypto.algorithmObject({name: "SHA-256"}),
  ~length=256,
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.signUsage],
)
let _export = WebAPI.SubtleCrypto.exportKeyBinary(
  crypto.subtle,
  ~format=WebAPI.SubtleCrypto.Jwk,
  ~key,
)
