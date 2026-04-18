@@warning("-30")

type remotePlaybackState =
  | @as("connected") Connected
  | @as("connecting") Connecting
  | @as("disconnected") Disconnected

/**
[See WebApiRemotePlayback on MDN](https://developer.mozilla.org/docs/Web/API/WebApiRemotePlayback)
*/
@editor.completeFrom(WebApiRemotePlayback)
type remotePlayback = {
  ...WebApiEvent.Types.eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiRemotePlayback/state)
    */
  state: remotePlaybackState,
}

type remotePlaybackAvailabilityCallback = bool => unit
