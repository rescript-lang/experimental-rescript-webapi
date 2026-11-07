@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let _key = WebAPI.SubtleCrypto.generateKeySymmetric(
  crypto.subtle,
  ~algorithm={name: "ECDSA", namedCurve: "P-256"},
  ~hash={name: "SHA-256"},
  ~length=256,
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.signUsage],
)
