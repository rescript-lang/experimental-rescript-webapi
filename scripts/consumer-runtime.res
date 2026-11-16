let headers = WebAPI.Headers.make()
headers->WebAPI.Headers.set(~name="X-Artifact", ~value="installed")
assert(headers->WebAPI.Headers.get("x-artifact")->Null.getOr("") == "installed")

let response = WebAPI.Response.fromString("packed consumer", ~init={status: 201})
assert(response.status == 201)

// Public shapes remain constructible; only coercion back into a private native type is forbidden.
type responseShape = {...WebAPI.Response.t}

let ordinaryRecord: responseShape = {
  type_: response.type_,
  url: "",
  redirected: false,
  status: 200,
  ok: true,
  statusText: "OK",
  headers: response.headers,
  body: Null,
  bodyUsed: false,
}

assert(ordinaryRecord.status == 200)
let view = (response :> responseShape)
assert(view.status == 201)
assert((await response->WebAPI.Response.text) == "packed consumer")

// The supported File-to-Blob helper preserves the native object and inherited methods.
let file = WebAPI.File.make(~fileBits=[String("native file")], ~fileName="compiler-upgrade.txt")
let blob = file->WebAPI.File.asBlob
assert(blob.size == file.size)
assert((await blob->WebAPI.Blob.text) == "native file")
