module FakeExtendableEvent = WebAPI.ExtendableEvent.Impl({type t = string})
let forged: WebAPI.DOM.extendableEvent = FakeExtendableEvent.asExtendableEvent("not an event")
