/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/UIEvent)
*/
@new
external make: (~type_: string, ~eventInitDict: Types.uiEventInit=?) => Types.uiEvent = "UIEvent"

module Impl = (
  T: {
    type t
  },
) => {
  external asUIEvent: T.t => Types.uiEvent = "%identity"

  include Event.Event.Impl({type t = T.t})
}

include Impl({type t = Types.uiEvent})
