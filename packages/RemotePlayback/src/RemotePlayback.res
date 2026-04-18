include WebApiEvent.EventTarget.Impl({type t = Types.remotePlayback})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiRemotePlayback/watchAvailability)
*/
@send
external watchAvailability: (
  Types.remotePlayback,
  Types.remotePlaybackAvailabilityCallback,
) => promise<int> = "watchAvailability"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiRemotePlayback/cancelWatchAvailability)
*/
@send
external cancelWatchAvailability: (Types.remotePlayback, ~id: int=?) => promise<unit> =
  "cancelWatchAvailability"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiRemotePlayback/prompt)
*/
@send
external prompt: Types.remotePlayback => promise<unit> = "prompt"
