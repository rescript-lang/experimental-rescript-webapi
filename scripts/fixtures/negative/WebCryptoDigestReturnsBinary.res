let _digestReturnedJson: (
  WebAPI.WebCryptoTypes.subtleCrypto,
  ~algorithm: WebAPI.WebCryptoTypes.algorithmIdentifier,
  ~data: WebAPI.ArrayBufferTypedArrayOrDataView.t,
) => promise<JSON.t> = WebAPI.SubtleCrypto.digest
