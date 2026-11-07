let _digestReturnedJson: (
  WebAPI.WebCryptoTypes.subtleCrypto,
  ~algorithm: WebAPI.WebCryptoTypes.algorithm,
  ~data: WebAPI.ArrayBufferTypedArrayOrDataView.t,
) => promise<JSON.t> = WebAPI.SubtleCrypto.digest
