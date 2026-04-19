type t = Types.pushEvent = private {...Types.pushEvent}

include WebApiEvent.ExtendableEvent.Impl({type t = t})
