module FakeElement = WebAPI.Element.Impl({type t = string})
let forged: WebAPI.Element.t = FakeElement.asElement("not an element")
