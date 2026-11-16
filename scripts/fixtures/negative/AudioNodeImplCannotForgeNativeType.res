module Fake = WebAPI.AudioNode.Impl({
  type t = string
})

let forged = Fake.asAudioNode("not an audio node")
