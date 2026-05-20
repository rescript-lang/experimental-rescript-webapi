/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaCapabilities/decodingInfo)
*/
@scope("globalThis.navigator.mediaCapabilities")
external decodingInfo: MediaCapabilitiesTypes.mediaDecodingConfiguration => promise<
  MediaCapabilitiesTypes.mediaCapabilitiesDecodingInfo,
> = "decodingInfo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaCapabilities/encodingInfo)
*/
@scope("globalThis.navigator.mediaCapabilities")
external encodingInfo: MediaCapabilitiesTypes.mediaEncodingConfiguration => promise<
  MediaCapabilitiesTypes.mediaCapabilitiesEncodingInfo,
> = "encodingInfo"

module Types = MediaCapabilitiesTypes
