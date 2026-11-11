module FakeNode = WebAPI.Node.Impl({type t = string})
let forged: WebAPI.Node.t = FakeNode.asNode("not a node")
