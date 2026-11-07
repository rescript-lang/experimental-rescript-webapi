@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let _key: JSON.t = await crypto.subtle->WebAPI.SubtleCrypto.generateKey(
  ~algorithm={name: "HMAC", hash: {name: "SHA-256"}, length: 256},
  ~extractable=true,
  ~keyUsages=[WebAPI.SubtleCrypto.signUsage],
)
