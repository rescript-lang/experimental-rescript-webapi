type t = PushTypes.pushEvent

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushEvent)
*/
external asEvent: t => DOM.event = "%identity"
external asExtendableEvent: t => DOM.extendableEvent = "%identity"

/**
Returns the data associated with the event.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PushEvent/data)
*/
@get external data: t => Null.t<PushTypes.pushMessageData> = "data"

include ExtendableEvent.Impl({type t = t})
