let headers = WebApi.Fetch.HeadersInit.fromDict(dict{"X-Fruit": "Peach"})
let blob = WebApi.File.Blob.make(~blobParts=[])
let file = WebApi.File.File.make(~fileBits=[], ~fileName="pong.txt")
let params = WebApi.URL.URLSearchParams.fromString("fruit=peach")
let formData = WebApi.Fetch.FormData.make()
let stream = WebApi.File.ReadableStream.make()

let response = WebApi.Fetch.Response.fromNull(~init={status: 204, headers})

let response1 = WebApi.Fetch.Response.fromString("pong", ~init={status: 200, headers})

let response2 = WebApi.Fetch.Response.fromBlob(blob)
let response3 = WebApi.Fetch.Response.fromFile(file)
let response4 = WebApi.Fetch.Response.fromURLSearchParams(params)
let response5 = WebApi.Fetch.Response.fromFormData(formData)
let response6 = WebApi.Fetch.Response.fromReadableStream(stream)

let _blob: WebApi.File.Blob.t = await response1
->WebApi.Fetch.Response.clone
->WebApi.Fetch.Response.blob
let _formData: WebApi.Fetch.FormData.t = await response5->WebApi.Fetch.Response.formData
