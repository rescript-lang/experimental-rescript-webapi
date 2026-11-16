/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent)
*/
@new
external make: (
  ~type_: string,
  ~eventInitDict: UiEventsTypes.mouseEventInit=?,
) => UiEventsTypes.mouseEvent = "MouseEvent"

module Impl = (
  T: {
    type t
  },
) => {
  include UIEvent.Impl({type t = T.t})

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/getModifierState)
*/
  @send
  external getModifierState: (T.t, string) => bool = "getModifierState"
}

include Impl({type t = UiEventsTypes.mouseEvent})

external asEvent: UiEventsTypes.mouseEvent => DOM.event = "%identity"
external asUIEvent: UiEventsTypes.mouseEvent => UiEventsTypes.uiEvent = "%identity"
external asMouseEvent: UiEventsTypes.mouseEvent => UiEventsTypes.mouseEvent = "%identity"
