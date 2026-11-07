@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let key = await WebAPI.SubtleCrypto.generateKeySymmetric(
  crypto.subtle,
  ~hash={name: "SHA-256"},
  ~length=256,
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.signUsage],
)
let format: WebAPI.SubtleCrypto.keyFormat = %raw(`"raw"`)
let _export: JSON.t = await crypto.subtle->WebAPI.SubtleCrypto.exportKey(~format, ~key)
