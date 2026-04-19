/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/InputEvent)
*/
@new
external make: (~type_: string, ~eventInitDict: Types.inputEventInit=?) => Types.inputEvent =
  "InputEvent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/InputEvent/getTargetRanges)
*/
@send
external getTargetRanges: Types.inputEvent => array<WebApiPrelude.Types.staticRange> =
  "getTargetRanges"

include UIEvent.Impl({type t = Types.inputEvent})
