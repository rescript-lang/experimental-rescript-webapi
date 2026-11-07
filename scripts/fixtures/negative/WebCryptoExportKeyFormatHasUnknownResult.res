let _exportReturnedJson: (
  WebAPI.WebCryptoTypes.subtleCrypto,
  ~format: WebAPI.WebCryptoTypes.keyFormat,
  ~key: WebAPI.WebCryptoTypes.cryptoKey,
) => promise<JSON.t> = WebAPI.SubtleCrypto.exportKey
