type t = Types.mediaSession = private {...Types.mediaSession}
type mediaSessionAction = Types.mediaSessionAction
type mediaPositionState = Types.mediaPositionState = {...Types.mediaPositionState}
type mediaSessionActionHandler = Types.mediaSessionActionHandler

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiMediaSession/setActionHandler)
*/
@send
external setActionHandler: (
  t,
  ~action: mediaSessionAction,
  ~handler: mediaSessionActionHandler,
) => unit = "setActionHandler"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiMediaSession/setPositionState)
*/
@send
external setPositionState: (t, ~state: mediaPositionState=?) => unit = "setPositionState"
