let req = WebApiFetch.Request.fromURL("https://example.com")

let blob = WebApiFile.Blob.make(~blobParts=[])
let file = WebApiFile.File.make(~fileBits=[], ~fileName="hello.txt")
let params = WebApiURL.URLSearchParams.fromString("greeting=hello")
let formData = WebApiFetch.FormData.make()
let stream = WebApiFile.ReadableStream.make()

let stringBody = WebApiFetch.BodyInit.fromString("hello")
let blobBody = WebApiFetch.BodyInit.fromBlob(blob)
let fileBody = WebApiFetch.BodyInit.fromFile(file)
let paramsBody = WebApiFetch.BodyInit.fromURLSearchParams(params)
let formDataBody = WebApiFetch.BodyInit.fromFormData(formData)
let streamBody = WebApiFetch.BodyInit.fromReadableStream(stream)

let req1 = WebApiFetch.Request.fromURL(
  "https://example.com/api",
  ~init={method: "POST", body: stringBody},
)

let req2 = WebApiFetch.Request.fromRequest(req1)

let _blob: WebApiFile.Blob.t = await req2->WebApiFetch.Request.clone->WebApiFetch.Request.blob

let formDataReq = WebApiFetch.Request.fromURL(
  "https://example.com/form",
  ~init={method: "POST", body: formDataBody},
)
let _formData: WebApiFetch.FormData.t = await formDataReq->WebApiFetch.Request.formData

Console.log(await req2->WebApiFetch.Request.text)
