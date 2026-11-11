@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let _pair = WebAPI.SubtleCrypto.generateEcdsaKeyPair(
  WebAPI.Crypto.subtle(crypto),
  ~algorithm=WebAPI.SubtleCrypto.algorithmObject({
    name: "HMAC",
    hash: {name: "SHA-256"},
    length: 256,
  }),
  ~namedCurve="P-256",
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.signUsage],
)
