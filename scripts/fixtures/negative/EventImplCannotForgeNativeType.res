module FakeEvent = WebAPI.Event.Impl({type t = string})
let forged: WebAPI.DOM.event = FakeEvent.asEvent("not an event")
