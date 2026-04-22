type t = PushTypes.pushEvent = private {...PushTypes.pushEvent}

include Event.ExtendableEvent.Impl({type t = t})
