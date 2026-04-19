type t = Types.remotePlayback = private {...Types.remotePlayback}
type remotePlaybackAvailabilityCallback = Types.remotePlaybackAvailabilityCallback

include WebApiEvent.EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/watchAvailability)
*/
@send
external watchAvailability: (t, remotePlaybackAvailabilityCallback) => promise<int> =
  "watchAvailability"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/cancelWatchAvailability)
*/
@send
external cancelWatchAvailability: (t, ~id: int=?) => promise<unit> = "cancelWatchAvailability"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/prompt)
*/
@send
external prompt: t => promise<unit> = "prompt"
