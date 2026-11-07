@scope("globalThis")
external crypto: WebAPI.Crypto.t = "crypto"

let _signReturnedJson: (
  WebAPI.WebCryptoTypes.subtleCrypto,
  ~algorithm: WebAPI.WebCryptoTypes.algorithm,
  ~key: WebAPI.WebCryptoTypes.cryptoKey,
  ~data: WebAPI.ArrayBufferTypedArrayOrDataView.t,
) => promise<JSON.t> = WebAPI.SubtleCrypto.sign
