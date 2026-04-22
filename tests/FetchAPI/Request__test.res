let req = Fetch.Request.fromURL("https://example.com")

let blob = File.Blob.make(~blobParts=[])
let file = File.File.make(~fileBits=[], ~fileName="hello.txt")
let params = URL.URLSearchParams.fromString("greeting=hello")
let formData = Fetch.FormData.make()
let stream = File.ReadableStream.make()

let stringBody = Fetch.BodyInit.fromString("hello")
let blobBody = Fetch.BodyInit.fromBlob(blob)
let fileBody = Fetch.BodyInit.fromFile(file)
let paramsBody = Fetch.BodyInit.fromURLSearchParams(params)
let formDataBody = Fetch.BodyInit.fromFormData(formData)
let streamBody = Fetch.BodyInit.fromReadableStream(stream)

let req1 = Fetch.Request.fromURL(
  "https://example.com/api",
  ~init={method: "POST", body: stringBody},
)

let req2 = Fetch.Request.fromRequest(req1)

let _blob: File.Blob.t = await req2->Fetch.Request.clone->Fetch.Request.blob

let formDataReq = Fetch.Request.fromURL(
  "https://example.com/form",
  ~init={method: "POST", body: formDataBody},
)
let _formData: Fetch.FormData.t = await formDataReq->Fetch.Request.formData

Console.log(await req2->Fetch.Request.text)
