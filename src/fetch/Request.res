/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request)
*/
/**
This private view prevents record construction through this module's public type.
ReScript's explicit structural coercion (`:>`) can still escape this restriction;
this is not an opaque brand guarantee.
*/
type t = FetchTypes.request = private {...FetchTypes.request}
type requestInit = FetchTypes.requestInit
type bodyInit = BodyInit.t
type headersInit = HeadersInit.t

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request)
*/
@throws(JsExn) @new
external fromURL: (string, ~init: requestInit=?) => t = "Request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request)
*/
@throws(JsExn) @new
external fromRequest: (t, ~init: requestInit=?) => t = "Request"

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
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/clone)
*/
@throws(JsExn) @send
external clone: t => t = "clone"
