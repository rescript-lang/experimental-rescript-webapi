/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WheelEvent)
*/
@new
external make: (~type_: string, ~eventInitDict: Types.wheelEventInit=?) => Types.wheelEvent = "WheelEvent"

include MouseEvent.Impl({type t = Types.wheelEvent})
