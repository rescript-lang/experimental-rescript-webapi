let headers = WebApiFetch.HeadersInit.fromDict(dict{"X-Fruit": "Peach"})
let blob = WebApiFile.Blob.make(~blobParts=[])
let file = WebApiFile.File.make(~fileBits=[], ~fileName="pong.txt")
let params = WebApiURL.URLSearchParams.fromString("fruit=peach")
let formData = WebApiFetch.FormData.make()
let stream = WebApiFile.ReadableStream.make()

let response = WebApiFetch.Response.fromNull(~init={status: 204, headers})

let response1 = WebApiFetch.Response.fromString(
  "pong",
  ~init={status: 200, headers},
)

let response2 = WebApiFetch.Response.fromBlob(blob)
let response3 = WebApiFetch.Response.fromFile(file)
let response4 = WebApiFetch.Response.fromURLSearchParams(params)
let response5 = WebApiFetch.Response.fromFormData(formData)
let response6 = WebApiFetch.Response.fromReadableStream(stream)

let _blobPromise: promise<WebApiFile.Blob.t> = response1->WebApiFetch.Response.blob
let _formDataPromise: promise<WebApiFetch.FormData.t> = response1->WebApiFetch.Response.formData
