module Impl = (
  T: {
    type t
  },
) => {
  include Event.Impl({type t = T.t})

  @send
  external waitUntil: (T.t, promise<'a>) => unit = "waitUntil"
}

include Impl({type t = DOM.extendableEvent})

external asEvent: DOM.extendableEvent => DOM.event = "%identity"
external asExtendableEvent: DOM.extendableEvent => DOM.extendableEvent = "%identity"
