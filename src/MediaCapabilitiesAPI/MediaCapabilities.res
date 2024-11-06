@@warning("-44")
@@warning("-33")
open MediaCapabilitiesAPI

module MediaCapabilities = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaCapabilities/decodingInfo)
    */
  @send
  external decodingInfo: (
    mediaCapabilities,
    mediaDecodingConfiguration,
  ) => Promise.t<mediaCapabilitiesDecodingInfo> = "decodingInfo"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaCapabilities/encodingInfo)
    */
  @send
  external encodingInfo: (
    mediaCapabilities,
    mediaEncodingConfiguration,
  ) => Promise.t<mediaCapabilitiesEncodingInfo> = "encodingInfo"
}
