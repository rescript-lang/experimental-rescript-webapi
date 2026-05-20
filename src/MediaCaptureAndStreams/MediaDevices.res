type t = MediaCaptureAndStreamsTypes.mediaDevices = private {
  ...MediaCaptureAndStreamsTypes.mediaDevices,
}
type mediaTrackSupportedConstraints = MediaCaptureAndStreamsTypes.mediaTrackSupportedConstraints = {
  ...MediaCaptureAndStreamsTypes.mediaTrackSupportedConstraints,
}
type mediaStreamConstraints = MediaCaptureAndStreamsTypes.mediaStreamConstraints = {
  ...MediaCaptureAndStreamsTypes.mediaStreamConstraints,
}
type displayMediaStreamOptions = MediaCaptureAndStreamsTypes.displayMediaStreamOptions = {
  ...MediaCaptureAndStreamsTypes.displayMediaStreamOptions,
}

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/enumerateDevices)
*/
@scope("globalThis.navigator.mediaDevices")
external enumerateDevices: unit => promise<array<MediaDeviceInfo.t>> = "enumerateDevices"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getSupportedConstraints)
*/
@scope("globalThis.navigator.mediaDevices")
external getSupportedConstraints: unit => mediaTrackSupportedConstraints = "getSupportedConstraints"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getUserMedia)
*/
@scope("globalThis.navigator.mediaDevices")
external getUserMedia: (~constraints: mediaStreamConstraints=?) => promise<MediaStream.t> =
  "getUserMedia"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getDisplayMedia)
*/
@scope("globalThis.navigator.mediaDevices")
external getDisplayMedia: (~options: displayMediaStreamOptions=?) => promise<MediaStream.t> =
  "getDisplayMedia"
