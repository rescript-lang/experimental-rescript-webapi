@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let _generateKeyReturnedJson: (
  WebAPI.WebCryptoTypes.subtleCrypto,
  ~algorithm: WebAPI.WebCryptoTypes.algorithm,
  ~extractable: bool,
  ~keyUsages: array<WebAPI.WebCryptoTypes.keyUsage>,
) => promise<JSON.t> = WebAPI.SubtleCrypto.generateKey
