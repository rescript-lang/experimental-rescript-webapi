module Fake = WebAPI.Node.Impl({
  type t = string
})

let forged = Fake.asNode("not a node")
