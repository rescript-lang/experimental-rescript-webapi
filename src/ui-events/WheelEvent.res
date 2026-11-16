/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WheelEvent)
*/
@new
external make: (
  ~type_: string,
  ~eventInitDict: UiEventsTypes.wheelEventInit=?,
) => UiEventsTypes.wheelEvent = "WheelEvent"

include MouseEvent.Impl({type t = UiEventsTypes.wheelEvent})

external asEvent: UiEventsTypes.wheelEvent => DOM.event = "%identity"
external asUIEvent: UiEventsTypes.wheelEvent => UiEventsTypes.uiEvent = "%identity"
external asMouseEvent: UiEventsTypes.wheelEvent => UiEventsTypes.mouseEvent = "%identity"
