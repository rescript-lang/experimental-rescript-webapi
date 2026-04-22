/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent)
*/
@new
external make: (~type_: string, ~eventInitDict: Types.pointerEventInit=?) => Types.pointerEvent =
  "PointerEvent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/getCoalescedEvents)
*/
@send
external getCoalescedEvents: Types.pointerEvent => array<Types.pointerEvent> = "getCoalescedEvents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PointerEvent/getPredictedEvents)
*/
@send
external getPredictedEvents: Types.pointerEvent => array<Types.pointerEvent> = "getPredictedEvents"

include MouseEvent.Impl({type t = Types.pointerEvent})
