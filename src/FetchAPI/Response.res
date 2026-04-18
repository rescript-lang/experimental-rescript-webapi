module Types = FetchTypes

type t = Types.response
type responseInit = Types.responseInit
type bodyInit = Types.bodyInit
type headersInit = Types.headersInit

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
external fromBlob: (FileTypes.blob, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromFile: (FileTypes.file, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromURLSearchParams: (URLTypes.urlSearchParams, ~init: responseInit=?) => t =
  "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromFormData: (Types.formData, ~init: responseInit=?) => t = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromReadableStream: (FileTypes.readableStream<'t>, ~init: responseInit=?) => t =
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
external blob: t => promise<FileTypes.blob> = "blob"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/bytes)
*/
@send
external bytes: t => promise<array<int>> = "bytes"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/formData)
*/
@send
external formData: t => promise<Types.formData> = "formData"

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
@scope("Response")
external redirect: (~url: string, ~status: int=?) => t = "redirect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/json_static)
*/
@scope("Response")
external jsonR: (~data: JSON.t, ~init: responseInit=?) => t = "json"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/clone)
*/
@send
external clone: t => t = "clone"
