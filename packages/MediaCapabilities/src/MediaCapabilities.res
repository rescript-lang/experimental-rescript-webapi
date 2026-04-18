/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaCapabilities/decodingInfo)
*/
@send
external decodingInfo: (
  Types.mediaCapabilities,
  Types.mediaDecodingConfiguration,
) => promise<Types.mediaCapabilitiesDecodingInfo> = "decodingInfo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaCapabilities/encodingInfo)
*/
@send
external encodingInfo: (
  Types.mediaCapabilities,
  Types.mediaEncodingConfiguration,
) => promise<Types.mediaCapabilitiesEncodingInfo> = "encodingInfo"
