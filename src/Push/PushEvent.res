type t = Types.pushEvent = private {...Types.pushEvent}

include WebApi.Event.ExtendableEvent.Impl({type t = t})
