module Types = WebSocketsTypes

type t = Types.closeEvent = {...Types.closeEvent}
type closeEventInit = Types.closeEventInit = {...Types.closeEventInit}

include Event.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CloseEvent)
*/
@new
external make: (~type_: string, ~eventInitDict: closeEventInit=?) => t = "CloseEvent"
