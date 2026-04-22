/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent)
*/
@new
external make: (~type_: string, ~eventInitDict: Types.keyboardEventInit=?) => Types.keyboardEvent =
  "KeyboardEvent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/KeyboardEvent/getModifierState)
*/
@send
external getModifierState: (Types.keyboardEvent, string) => bool = "getModifierState"

include UIEvent.Impl({type t = Types.keyboardEvent})
