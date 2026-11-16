module Fake = WebAPI.Event.Impl({
  type t = string
})

let forged = Fake.asEvent("not an event")
