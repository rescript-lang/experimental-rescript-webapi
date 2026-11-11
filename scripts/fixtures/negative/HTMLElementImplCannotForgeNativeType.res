module FakeHTMLElement = WebAPI.HTMLElement.Impl({type t = string})
let forged: WebAPI.HTMLElement.t = FakeHTMLElement.asHTMLElement("not an element")
