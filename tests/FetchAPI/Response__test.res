let headers = Fetch.HeadersInit.fromDict(dict{"X-Fruit": "Peach"})
let blob = File.Blob.make(~blobParts=[])
let file = File.File.make(~fileBits=[], ~fileName="pong.txt")
let params = URL.URLSearchParams.fromString("fruit=peach")
let formData = Fetch.FormData.make()
let stream = File.ReadableStream.make()

let response = Fetch.Response.fromNull(~init={status: 204, headers})

let response1 = Fetch.Response.fromString("pong", ~init={status: 200, headers})

let response2 = Fetch.Response.fromBlob(blob)
let response3 = Fetch.Response.fromFile(file)
let response4 = Fetch.Response.fromURLSearchParams(params)
let response5 = Fetch.Response.fromFormData(formData)
let response6 = Fetch.Response.fromReadableStream(stream)

let _blob: File.Blob.t = await response1
->Fetch.Response.clone
->Fetch.Response.blob
let _formData: Fetch.FormData.t = await response5->Fetch.Response.formData
