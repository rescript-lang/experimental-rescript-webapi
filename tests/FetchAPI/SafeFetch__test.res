@scope("Object")
external isSame: ('value, 'value) => bool = "is"

let okResponse = Response.fromString("ok", ~init={status: 200})
switch okResponse->SafeFetch.checkOk {
| Ok(response) => assert(isSame(response, okResponse))
| Error(_) => assert(false)
}

let notOkResponse = Response.fromString("missing", ~init={status: 404})
switch notOkResponse->SafeFetch.checkOk {
| Error({response}) => assert(isSame(response, notOkResponse))
| Ok(_) => assert(false)
}

// Exercise native Fetch with already-aborted signals before installing the mocks.
// Fetch must not make a network request for either signal.
switch await SafeFetch.fetch(
  "https://example.com/aborted",
  ~init={signal: Nullable.make(AbortSignal.abort())},
) {
| Error(FetchRejected(cause)) =>
  switch cause->JsExn.fromException {
  | Some(rawCause) => assert(JsExn.name(rawCause) == Some("AbortError"))
  | None => assert(false)
  }
| Error(ResponseNotOk(_)) | Ok(_) => assert(false)
}

let customAbortSignal = AbortSignal.abort(~reason=JSON.Encode.string("cancelled"))
switch await SafeFetch.fetch(
  "https://example.com/aborted",
  ~init={signal: Nullable.make(customAbortSignal)},
) {
| Error(FetchRejected(cause)) =>
  switch cause->JsExn.fromException {
  | Some(rawCause) => assert(isSame(rawCause, %raw(`"cancelled"`)))
  | None => assert(false)
  }
| Error(ResponseNotOk(_)) | Ok(_) => assert(false)
}

%%raw(`
globalThis.__safeFetchResponse = new Response("ok", {status: 200})
globalThis.fetch = (_input, init) => {
  globalThis.__safeFetchInit = init
  return Promise.resolve(globalThis.__safeFetchResponse)
}
`)

let request = Request.fromURL("https://example.com/request")

switch await SafeFetch.fetch("https://example.com/ok", ~init={method: "POST"}) {
| Ok(response) => {
    let expected: Response.t = %raw(`globalThis.__safeFetchResponse`)
    let method: string = %raw(`globalThis.__safeFetchInit.method`)
    assert(isSame(response, expected))
    assert(method == "POST")
  }
| Error(_) => assert(false)
}

switch await SafeFetch.fetchWithRequest(request, ~init={method: "POST"}) {
| Ok(response) => {
    let expected: Response.t = %raw(`globalThis.__safeFetchResponse`)
    let method: string = %raw(`globalThis.__safeFetchInit.method`)
    assert(isSame(response, expected))
    assert(method == "POST")
  }
| Error(_) => assert(false)
}

%%raw(`
globalThis.__safeFetchResponse = new Response("missing", {status: 404})
globalThis.fetch = (_input, init) => {
  globalThis.__safeFetchInit = init
  return Promise.resolve(globalThis.__safeFetchResponse)
}
`)

switch await SafeFetch.fetch("https://example.com/missing") {
| Error(ResponseNotOk({response})) => {
    let expected: Response.t = %raw(`globalThis.__safeFetchResponse`)
    assert(isSame(response, expected))
    let initOmitted: bool = %raw(`globalThis.__safeFetchInit === undefined`)
    assert(initOmitted)
  }
| Error(FetchRejected(_)) | Ok(_) => assert(false)
}

switch await SafeFetch.fetchWithRequest(request) {
| Error(ResponseNotOk({response})) => {
    let expected: Response.t = %raw(`globalThis.__safeFetchResponse`)
    assert(isSame(response, expected))
    let initOmitted: bool = %raw(`globalThis.__safeFetchInit === undefined`)
    assert(initOmitted)
  }
| Error(FetchRejected(_)) | Ok(_) => assert(false)
}

%%raw(`
globalThis.__safeFetchCause = new TypeError("request rejected")
globalThis.fetch = () => Promise.reject(globalThis.__safeFetchCause)
`)

switch await SafeFetch.fetch("https://example.com/rejected") {
| Error(FetchRejected(cause)) =>
  switch cause->JsExn.fromException {
  | Some(rawCause) => assert(isSame(rawCause, %raw(`globalThis.__safeFetchCause`)))
  | None => assert(false)
  }
| Error(ResponseNotOk(_)) | Ok(_) => assert(false)
}

switch await SafeFetch.fetchWithRequest(request) {
| Error(FetchRejected(cause)) =>
  switch cause->JsExn.fromException {
  | Some(rawCause) => assert(isSame(rawCause, %raw(`globalThis.__safeFetchCause`)))
  | None => assert(false)
  }
| Error(ResponseNotOk(_)) | Ok(_) => assert(false)
}

%%raw(`
globalThis.__safeFetchCause = new TypeError("request threw")
globalThis.fetch = () => { throw globalThis.__safeFetchCause }
`)

switch await SafeFetch.fetchWithRequest(request) {
| Error(FetchRejected(cause)) =>
  switch cause->JsExn.fromException {
  | Some(rawCause) => assert(isSame(rawCause, %raw(`globalThis.__safeFetchCause`)))
  | None => assert(false)
  }
| Error(ResponseNotOk(_)) | Ok(_) => assert(false)
}

switch await SafeFetch.fetch("https://example.com/synchronous") {
| Error(FetchRejected(cause)) =>
  switch cause->JsExn.fromException {
  | Some(rawCause) => assert(isSame(rawCause, %raw(`globalThis.__safeFetchCause`)))
  | None => assert(false)
  }
| Error(ResponseNotOk(_)) | Ok(_) => assert(false)
}

let textResponse = Response.fromString("hello")
switch await textResponse->SafeFetch.text {
| Ok({response, body}) => {
    assert(isSame(response, textResponse))
    assert(body == "hello")
  }
| Error(_) => assert(false)
}

let jsonResponse = Response.fromString(`{"name":"Ada"}`)
switch await jsonResponse->SafeFetch.json {
| Ok({response, body}) => {
    let _json: JSON.t = body
    assert(isSame(response, jsonResponse))
  }
| Error(_) => assert(false)
}

let malformedResponse = Response.fromString("not json")
switch await malformedResponse->SafeFetch.json {
| Error({response, cause: _}) => assert(isSame(response, malformedResponse))
| Ok(_) => assert(false)
}

let consumedResponse = Response.fromString("once")
let _ = await consumedResponse->Response.text
switch await consumedResponse->SafeFetch.text {
| Error({response, cause: _}) => assert(isSame(response, consumedResponse))
| Ok(_) => assert(false)
}

let errorBodyResponse = Response.fromString("details", ~init={status: 500})
switch await errorBodyResponse->SafeFetch.text {
| Ok({response, body}) => {
    assert(isSame(response, errorBodyResponse))
    assert(body == "details")
  }
| Error(_) => assert(false)
}

let arrayBufferResult: result<
  SafeFetch.response<ArrayBuffer.t>,
  SafeFetch.readError,
> = await Response.fromString("buffer")->SafeFetch.arrayBuffer
assert(arrayBufferResult->Result.isOk)

let blobResult: result<SafeFetch.response<Blob.t>, SafeFetch.readError> = await Response.fromString(
  "blob",
)->SafeFetch.blob
assert(blobResult->Result.isOk)

let bytesResult: result<
  SafeFetch.response<array<int>>,
  SafeFetch.readError,
> = await Response.fromString("bytes")->SafeFetch.bytes
assert(bytesResult->Result.isOk)

let formDataResponse = Response.fromString(
  "fruit=peach",
  ~init={
    headers: HeadersInit.fromDict(dict{"Content-Type": "application/x-www-form-urlencoded"}),
  },
)
let formDataResult: result<
  SafeFetch.response<FormData.t>,
  SafeFetch.readError,
> = await formDataResponse->SafeFetch.formData
assert(formDataResult->Result.isOk)
