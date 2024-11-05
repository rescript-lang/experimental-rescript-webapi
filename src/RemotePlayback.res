@@warning("-30")

open Event

type remotePlaybackState =
  | @as("connected") Connected
  | @as("connecting") Connecting
  | @as("disconnected") Disconnected

/**
[See RemotePlayback on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback)
*/
type remotePlayback = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/state)
    */
  state: remotePlaybackState,
}

type remotePlaybackAvailabilityCallback = bool => unit

module RemotePlayback = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/watchAvailability)
    */
  @send
  external watchAvailability: (
    remotePlayback,
    remotePlaybackAvailabilityCallback,
  ) => Promise.t<int> = "watchAvailability"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/cancelWatchAvailability)
    */
  @send
  external cancelWatchAvailability: (remotePlayback, int) => Promise.t<unit> =
    "cancelWatchAvailability"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/RemotePlayback/prompt)
    */
  @send
  external prompt: remotePlayback => Promise.t<unit> = "prompt"
}
