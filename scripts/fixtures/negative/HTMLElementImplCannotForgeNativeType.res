module Fake = WebAPI.HTMLElement.Impl({
  type t = string
})

let forged = Fake.asHTMLElement("not an element")
