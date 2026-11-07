let _verifyReturnedJson: (
  WebAPI.WebCryptoTypes.subtleCrypto,
  ~algorithm: WebAPI.WebCryptoTypes.algorithm,
  ~key: WebAPI.WebCryptoTypes.cryptoKey,
  ~signature: WebAPI.ArrayBufferTypedArrayOrDataView.t,
  ~data: WebAPI.ArrayBufferTypedArrayOrDataView.t,
) => promise<JSON.t> = WebAPI.SubtleCrypto.verify
