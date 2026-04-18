open PushTypes

type t = pushEvent = {...pushEvent}

include ExtendableEvent.Impl({type t = t})
