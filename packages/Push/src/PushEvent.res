type t = Types.pushEvent

include WebApiEvent.ExtendableEvent.Impl({type t = t})
