module FakeEventTarget = WebAPI.EventTarget.Impl({type t = string})
let forged: WebAPI.DOM.eventTarget = FakeEventTarget.asEventTarget("not a target")
