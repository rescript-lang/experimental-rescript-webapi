/**
Describes a response whose `ok` field is `false`.

The original response is retained so callers can inspect its status, headers, and body.
*/
type httpError = {
  response: Response.t,
}

/**
Describes an expected failure while producing or classifying a response.

- `FetchRejected(cause)` means the native Fetch operation threw or its promise rejected. Fetch does
  not expose a reliable browser-independent distinction between network, abort, permission, and
  other request failures.
- `ResponseNotOk({response})` means Fetch fulfilled with a response whose `ok` field is `false`.
  The response remains available for inspection and body reading.
*/
type fetchError =
  | FetchRejected(exn)
  | ResponseNotOk(httpError)

/**
Describes a rejected response body reader.

The record retains both the response whose body was being consumed and the original rejection
cause.
*/
type readError = {
  response: Response.t,
  cause: exn,
}

/**
A successfully read body paired with its original response.

The response body has been consumed. Clone the response before reading when another consumer also
needs the body.
*/
type response<'body> = {
  response: Response.t,
  body: 'body,
}

/**
Classifies an existing response using its native `ok` field.

Returns `Ok(response)` for successful responses and `Error({response})` otherwise. This function
does not read the body and is useful with responses obtained from the raw `Fetch` API.
*/
let checkOk: Response.t => result<Response.t, httpError>

/**
Fetches a URL and returns expected request and HTTP status failures as values.

The returned promise fulfills with `Error(FetchRejected(cause))` when the native operation throws or
rejects, `Error(ResponseNotOk({response}))` when the response is not OK, or `Ok(response)` for an OK
response.
*/
let fetch: (string, ~init: Request.requestInit=?) => promise<result<Response.t, fetchError>>

/**
Fetches an existing `Request.t` and returns expected request and HTTP status failures as values.

This has the same result contract as `fetch` and accepts an optional request initializer that is
passed to the native Fetch operation.
*/
let fetchWithRequest: (
  Request.t,
  ~init: Request.requestInit=?,
) => promise<result<Response.t, fetchError>>

/**
Reads the response body as an `ArrayBuffer.t`.

Returns the body with the original response, or a `readError` when the native reader rejects.
*/
let arrayBuffer: Response.t => promise<result<response<ArrayBuffer.t>, readError>>

/**
Reads the response body as a `Blob.t`.

Returns the body with the original response, or a `readError` when the native reader rejects.
*/
let blob: Response.t => promise<result<response<Blob.t>, readError>>

/**
Reads the response body as an array of bytes.

Returns the body with the original response, or a `readError` when the native reader rejects.
*/
let bytes: Response.t => promise<result<response<array<int>>, readError>>

/**
Reads the response body as `FormData.t`.

Returns the body with the original response, or a `readError` when the native reader rejects.
*/
let formData: Response.t => promise<result<response<FormData.t>, readError>>

/**
Parses the response body as `JSON.t`.

Malformed JSON and other native reader rejections become `readError` values. This function does not
validate the parsed JSON against an application domain type.
*/
let json: Response.t => promise<result<response<JSON.t>, readError>>

/**
Reads the response body as a string.

Returns the body with the original response, or a `readError` when the native reader rejects.
*/
let text: Response.t => promise<result<response<string>, readError>>
