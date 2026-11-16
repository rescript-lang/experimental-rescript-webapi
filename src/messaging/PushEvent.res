type t = PushTypes.pushEvent = private {...PushTypes.pushEvent}

include ExtendableEvent.Impl({type t = t})

external asEvent: t => DOM.event = "%identity"
external asExtendableEvent: t => DOM.extendableEvent = "%identity"
