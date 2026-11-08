@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let key = await WebAPI.SubtleCrypto.generateKeySymmetric(
  WebAPI.Crypto.subtle(crypto),
  ~hash=WebAPI.SubtleCrypto.algorithmObject({name: "SHA-256"}),
  ~length=256,
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.signUsage],
)
let _export = WebAPI.SubtleCrypto.exportKeyJwk(
  WebAPI.Crypto.subtle(crypto),
  ~format=WebAPI.SubtleCrypto.Raw,
  ~key,
)
