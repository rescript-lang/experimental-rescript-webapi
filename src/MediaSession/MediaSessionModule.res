@@warning("-44")
@@warning("-33")
open MediaSession

module MediaSession = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSession/setActionHandler)
    */
  @send
  external setActionHandler: (mediaSession, mediaSessionAction, mediaSessionActionHandler) => unit =
    "setActionHandler"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSession/setPositionState)
    */
  @send
  external setPositionState: (mediaSession, mediaPositionState) => unit = "setPositionState"
}
