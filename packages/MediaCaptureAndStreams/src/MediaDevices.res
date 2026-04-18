include Event.EventTarget.Impl({type t = Types.mediaDevices})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/enumerateDevices)
*/
@send
external enumerateDevices: Types.mediaDevices => promise<array<Types.mediaDeviceInfo>> =
  "enumerateDevices"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getSupportedConstraints)
*/
@send
external getSupportedConstraints: Types.mediaDevices => Types.mediaTrackSupportedConstraints =
  "getSupportedConstraints"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getUserMedia)
*/
@send
external getUserMedia: (
  Types.mediaDevices,
  ~constraints: Types.mediaStreamConstraints=?,
) => promise<Types.mediaStream> = "getUserMedia"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaDevices/getDisplayMedia)
*/
@send
external getDisplayMedia: (
  Types.mediaDevices,
  ~options: Types.displayMediaStreamOptions=?,
) => promise<Types.mediaStream> = "getDisplayMedia"
