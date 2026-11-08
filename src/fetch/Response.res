/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
type t = FetchTypes.response

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/type)
*/
@get external type_: t => FetchTypes.responseType = "type"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/url)
*/
@get external url: t => string = "url"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/redirected)
*/
@get external redirected: t => bool = "redirected"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/status)
*/
@get external status: t => int = "status"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/ok)
*/
@get external ok: t => bool = "ok"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/statusText)
*/
@get external statusText: t => string = "statusText"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/headers)
*/
@get external headers: t => FetchTypes.headers = "headers"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/body)
*/
@get external body: t => Null.t<FileTypes.readableStream<Uint8Array.t>> = "body"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/bodyUsed)
*/
@get external bodyUsed: t => bool = "bodyUsed"
type responseInit = FetchTypes.responseInit
type bodyInit = BodyInit.t
type headersInit = HeadersInit.t

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromNull: (@as(json`null`) _, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromString: (string, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromArrayBuffer: (ArrayBuffer.t, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromTypedArray: (TypedArray.t<'t>, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromDataView: (DataView.t, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromBlob: (Blob.t, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromFile: (File.t, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromURLSearchParams: (URLSearchParams.t, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromFormData: (FormData.t, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromReadableStream: (ReadableStream.t<Uint8Array.t>, ~init: responseInit=?) => t =
  "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/arrayBuffer)
*/
@send
external arrayBuffer: t => promise<ArrayBuffer.t> = "arrayBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/blob)
*/
@send
external blob: t => promise<Blob.t> = "blob"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/bytes)
*/
@send
external bytes: t => promise<Uint8Array.t> = "bytes"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/formData)
*/
@send
external formData: t => promise<FormData.t> = "formData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/json)
*/
@send
external json: t => promise<JSON.t> = "json"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/text)
*/
@send
external text: t => promise<string> = "text"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/error_static)
*/
@scope("Response")
external error: unit => t = "error"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/redirect_static)
*/
@throws(JsExn) @scope("Response")
external redirect: (~url: string, ~status: int=?) => t = "redirect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/json_static)
*/
@throws(JsExn) @scope("Response")
external jsonR: (~data: JSON.t, ~init: responseInit=?) => t = "json"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/clone)
*/
@throws(JsExn) @send
external clone: t => t = "clone"
