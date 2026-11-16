module Fake = WebAPI.BaseAudioContext.Impl({
  type t = string
})

let forged = Fake.asBaseAudioContext("not an audio context")
