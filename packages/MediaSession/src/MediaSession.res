/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSession/setActionHandler)
*/
@send
external setActionHandler: (
  Types.mediaSession,
  ~action: Types.mediaSessionAction,
  ~handler: Types.mediaSessionActionHandler,
) => unit = "setActionHandler"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaSession/setPositionState)
*/
@send
external setPositionState: (Types.mediaSession, ~state: Types.mediaPositionState=?) => unit = "setPositionState"
