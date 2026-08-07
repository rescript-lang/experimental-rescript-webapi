module Impl = (
  T: {
    type t
  },
) => {
  include Event.Impl({type t = T.t})

  external asExtendableEvent: T.t => DOM.extendableEvent = "%identity"

  @send
  external waitUntil: (T.t, promise<'a>) => unit = "waitUntil"
}

include Impl({type t = DOM.extendableEvent})
