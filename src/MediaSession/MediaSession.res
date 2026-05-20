type t = MediaSessionTypes.mediaSession = private {...MediaSessionTypes.mediaSession}
type mediaSessionAction = MediaSessionTypes.mediaSessionAction
type mediaPositionState = MediaSessionTypes.mediaPositionState = {
  ...MediaSessionTypes.mediaPositionState,
}
type mediaSessionActionHandler = MediaSessionTypes.mediaSessionActionHandler

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSession/setActionHandler)
*/
@scope("globalThis.navigator.mediaSession")
external setActionHandler: (
  ~action: mediaSessionAction,
  ~handler: mediaSessionActionHandler,
) => unit = "setActionHandler"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSession/setPositionState)
*/
@scope("globalThis.navigator.mediaSession")
external setPositionState: (~state: mediaPositionState=?) => unit = "setPositionState"

module MediaMetadata = MediaMetadata
module Types = MediaSessionTypes
