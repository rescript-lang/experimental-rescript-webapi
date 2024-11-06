open Event
open MediaCaptureAndStreams

module MediaDevices = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/enumerateDevices)
    */
  @send
  external enumerateDevices: mediaDevices => Promise.t<array<mediaDeviceInfo>> = "enumerateDevices"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getSupportedConstraints)
    */
  @send
  external getSupportedConstraints: mediaDevices => mediaTrackSupportedConstraints =
    "getSupportedConstraints"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getUserMedia)
    */
  @send
  external getUserMedia: (mediaDevices, mediaStreamConstraints) => Promise.t<mediaStream> =
    "getUserMedia"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getDisplayMedia)
    */
  @send
  external getDisplayMedia: (mediaDevices, displayMediaStreamOptions) => Promise.t<mediaStream> =
    "getDisplayMedia"
}
