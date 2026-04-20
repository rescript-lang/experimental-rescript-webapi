type t = Types.remotePlayback = private {...Types.remotePlayback}
type remotePlaybackAvailabilityCallback = Types.remotePlaybackAvailabilityCallback

include WebApiEvent.EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiRemotePlayback/watchAvailability)
*/
@send
external watchAvailability: (t, remotePlaybackAvailabilityCallback) => promise<int> =
  "watchAvailability"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiRemotePlayback/cancelWatchAvailability)
*/
@send
external cancelWatchAvailability: (t, ~id: int=?) => promise<unit> = "cancelWatchAvailability"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiRemotePlayback/prompt)
*/
@send
external prompt: t => promise<unit> = "prompt"
