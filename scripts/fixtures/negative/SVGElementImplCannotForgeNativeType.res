module Fake = WebAPI.SVGElement.Impl({
  type t = string
})

let forged = Fake.asSVGElement("not an element")
