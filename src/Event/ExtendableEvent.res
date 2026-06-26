type t = EventTypes.extendableEvent = private {...EventTypes.extendableEvent}

module Impl = (
  T: {
    type t
  },
) => {
  external asExtendableEvent: T.t => t = "%identity"

  include Event.Impl({type t = T.t})

  @send
  external waitUntil: (T.t, promise<'a>) => unit = "waitUntil"
}

include Impl({type t = t})
