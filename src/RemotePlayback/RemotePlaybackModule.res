@@warning("-44")
@@warning("-33")
open RemotePlayback

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
