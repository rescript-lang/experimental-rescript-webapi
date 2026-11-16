/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/UIEvent)
*/
@new
external make: (
  ~type_: string,
  ~eventInitDict: UiEventsTypes.uiEventInit=?,
) => UiEventsTypes.uiEvent = "UIEvent"

module Impl = (
  T: {
    type t
  },
) => {
  include Event.Impl({type t = T.t})
}

include Impl({type t = UiEventsTypes.uiEvent})

external asEvent: UiEventsTypes.uiEvent => DOM.event = "%identity"
external asUIEvent: UiEventsTypes.uiEvent => UiEventsTypes.uiEvent = "%identity"
