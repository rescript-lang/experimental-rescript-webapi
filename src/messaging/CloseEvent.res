include Event.Impl({type t = WebSocketsTypes.closeEvent})

external asEvent: WebSocketsTypes.closeEvent => DOM.event = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CloseEvent)
*/
@new
external make: (
  ~type_: string,
  ~eventInitDict: WebSocketsTypes.closeEventInit=?,
) => WebSocketsTypes.closeEvent = "CloseEvent"
