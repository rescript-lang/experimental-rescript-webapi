@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let _key = WebAPI.SubtleCrypto.generateKeySymmetric(
  crypto.subtle,
  ~algorithm=WebAPI.SubtleCrypto.algorithmObject({name: "ECDSA", namedCurve: "P-256"}),
  ~hash=WebAPI.SubtleCrypto.algorithmObject({name: "SHA-256"}),
  ~length=256,
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.signUsage],
)
