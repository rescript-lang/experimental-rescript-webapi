let req = WebApi.Fetch.Request.fromURL("https://example.com")

let blob = WebApi.File.Blob.make(~blobParts=[])
let file = WebApi.File.File.make(~fileBits=[], ~fileName="hello.txt")
let params = WebApi.URL.URLSearchParams.fromString("greeting=hello")
let formData = WebApi.Fetch.FormData.make()
let stream = WebApi.File.ReadableStream.make()

let stringBody = WebApi.Fetch.BodyInit.fromString("hello")
let blobBody = WebApi.Fetch.BodyInit.fromBlob(blob)
let fileBody = WebApi.Fetch.BodyInit.fromFile(file)
let paramsBody = WebApi.Fetch.BodyInit.fromURLSearchParams(params)
let formDataBody = WebApi.Fetch.BodyInit.fromFormData(formData)
let streamBody = WebApi.Fetch.BodyInit.fromReadableStream(stream)

let req1 = WebApi.Fetch.Request.fromURL(
  "https://example.com/api",
  ~init={method: "POST", body: stringBody},
)

let req2 = WebApi.Fetch.Request.fromRequest(req1)

let _blob: WebApi.File.Blob.t = await req2->WebApi.Fetch.Request.clone->WebApi.Fetch.Request.blob

let formDataReq = WebApi.Fetch.Request.fromURL(
  "https://example.com/form",
  ~init={method: "POST", body: formDataBody},
)
let _formData: WebApi.Fetch.FormData.t = await formDataReq->WebApi.Fetch.Request.formData

Console.log(await req2->WebApi.Fetch.Request.text)
