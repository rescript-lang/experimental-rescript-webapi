type t = MediaCaptureAndStreamsTypes.mediaStream = private {
  ...MediaCaptureAndStreamsTypes.mediaStream,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
@new
external make: unit => t = "MediaStream"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
@new
external makeFromMediaStream: t => t = "MediaStream"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
@new
external makeFromMediaStreams: array<MediaStreamTrack.t> => t = "MediaStream"

include Event.EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getAudioTracks)
*/
@send
external getAudioTracks: t => array<MediaStreamTrack.t> = "getAudioTracks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getVideoTracks)
*/
@send
external getVideoTracks: t => array<MediaStreamTrack.t> = "getVideoTracks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getTracks)
*/
@send
external getTracks: t => array<MediaStreamTrack.t> = "getTracks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getTrackById)
*/
@send
external getTrackById: (t, string) => MediaStreamTrack.t = "getTrackById"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/addTrack)
*/
@send
external addTrack: (t, MediaStreamTrack.t) => unit = "addTrack"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/removeTrack)
*/
@send
external removeTrack: (t, MediaStreamTrack.t) => unit = "removeTrack"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/clone)
*/
@send
external clone: t => t = "clone"
