/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent)
*/
@new
external make: (~type_: string, ~eventInitDict: Types.mouseEventInit=?) => Types.mouseEvent =
  "MouseEvent"

module Impl = (
  T: {
    type t
  },
) => {
  external asMouseEvent: T.t => Types.mouseEvent = "%identity"

  include UIEvent.Impl({type t = T.t})

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MouseEvent/getModifierState)
*/
  @send
  external getModifierState: (T.t, string) => bool = "getModifierState"
}

include Impl({type t = Types.mouseEvent})
