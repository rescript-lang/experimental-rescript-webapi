/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CompositionEvent)
*/
@new
external make: (
  ~type_: string,
  ~eventInitDict: UiEventsTypes.compositionEventInit=?,
) => UiEventsTypes.compositionEvent = "CompositionEvent"

include UIEvent.Impl({type t = UiEventsTypes.compositionEvent})

external asEvent: UiEventsTypes.compositionEvent => DOM.event = "%identity"
external asUIEvent: UiEventsTypes.compositionEvent => UiEventsTypes.uiEvent = "%identity"
