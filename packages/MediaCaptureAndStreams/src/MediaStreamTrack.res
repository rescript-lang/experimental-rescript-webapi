include Event.EventTarget.Impl({type t = Types.mediaStreamTrack})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/clone)
*/
@send
external clone: Types.mediaStreamTrack => Types.mediaStreamTrack = "clone"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/stop)
*/
@send
external stop: Types.mediaStreamTrack => unit = "stop"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/getCapabilities)
*/
@send
external getCapabilities: Types.mediaStreamTrack => Types.mediaTrackCapabilities = "getCapabilities"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/getConstraints)
*/
@send
external getConstraints: Types.mediaStreamTrack => Types.mediaTrackConstraints = "getConstraints"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/getSettings)
*/
@send
external getSettings: Types.mediaStreamTrack => Types.mediaTrackSettings = "getSettings"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack/applyConstraints)
*/
@send
external applyConstraints: (
  Types.mediaStreamTrack,
  ~constraints: Types.mediaTrackConstraints=?,
) => promise<unit> = "applyConstraints"
