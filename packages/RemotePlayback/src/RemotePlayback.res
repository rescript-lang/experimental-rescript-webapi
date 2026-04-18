include Event.EventTarget.Impl({type t = Types.remotePlayback})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/watchAvailability)
*/
@send
external watchAvailability: (Types.remotePlayback, Types.remotePlaybackAvailabilityCallback) => promise<int> =
  "watchAvailability"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/cancelWatchAvailability)
*/
@send
external cancelWatchAvailability: (Types.remotePlayback, ~id: int=?) => promise<unit> =
  "cancelWatchAvailability"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/prompt)
*/
@send
external prompt: Types.remotePlayback => promise<unit> = "prompt"
