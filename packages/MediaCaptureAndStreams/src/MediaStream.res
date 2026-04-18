/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
@new
external make: unit => Types.mediaStream = "MediaStream"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
@new
external make2: Types.mediaStream => Types.mediaStream = "MediaStream"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream)
*/
@new
external make3: array<Types.mediaStreamTrack> => Types.mediaStream = "MediaStream"

include WebApiEvent.EventTarget.Impl({type t = Types.mediaStream})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getAudioTracks)
*/
@send
external getAudioTracks: Types.mediaStream => array<Types.mediaStreamTrack> = "getAudioTracks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getVideoTracks)
*/
@send
external getVideoTracks: Types.mediaStream => array<Types.mediaStreamTrack> = "getVideoTracks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getTracks)
*/
@send
external getTracks: Types.mediaStream => array<Types.mediaStreamTrack> = "getTracks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/getTrackById)
*/
@send
external getTrackById: (Types.mediaStream, string) => Types.mediaStreamTrack = "getTrackById"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/addTrack)
*/
@send
external addTrack: (Types.mediaStream, Types.mediaStreamTrack) => unit = "addTrack"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/removeTrack)
*/
@send
external removeTrack: (Types.mediaStream, Types.mediaStreamTrack) => unit = "removeTrack"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStream/clone)
*/
@send
external clone: Types.mediaStream => Types.mediaStream = "clone"
