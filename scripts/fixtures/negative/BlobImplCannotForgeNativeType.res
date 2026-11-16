module Fake = WebAPI.Blob.Impl({
  type t = string
})

let forged = Fake.asBlob("not a blob")
