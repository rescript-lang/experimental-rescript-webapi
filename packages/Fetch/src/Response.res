/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromNull: (@as(json`null`) _, ~init: Types.responseInit=?) => Types.response = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromString: (string, ~init: Types.responseInit=?) => Types.response = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromArrayBuffer: (ArrayBuffer.t, ~init: Types.responseInit=?) => Types.response =
  "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromTypedArray: (TypedArray.t<'t>, ~init: Types.responseInit=?) => Types.response =
  "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromDataView: (DataView.t, ~init: Types.responseInit=?) => Types.response = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromBlob: (WebApiFile.Types.blob, ~init: Types.responseInit=?) => Types.response = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromFile: (WebApiFile.Types.file, ~init: Types.responseInit=?) => Types.response = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromURLSearchParams: (
  WebApiURL.Types.urlSearchParams,
  ~init: Types.responseInit=?,
) => Types.response = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromFormData: (Types.formData, ~init: Types.responseInit=?) => Types.response = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external fromReadableStream: (
  WebApiFile.Types.readableStream<'t>,
  ~init: Types.responseInit=?,
) => Types.response = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/arrayBuffer)
*/
@send
external arrayBuffer: Types.response => promise<ArrayBuffer.t> = "arrayBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/blob)
*/
@send
external blob: Types.response => promise<WebApiFile.Types.blob> = "blob"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/bytes)
*/
@send
external bytes: Types.response => promise<array<int>> = "bytes"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/formData)
*/
@send
external formData: Types.response => promise<Types.formData> = "formData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/json)
*/
@send
external json: Types.response => promise<JSON.t> = "json"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/text)
*/
@send
external text: Types.response => promise<string> = "text"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/error_static)
*/
@scope("Response")
external error: unit => Types.response = "error"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/redirect_static)
*/
@scope("Response")
external redirect: (~url: string, ~status: int=?) => Types.response = "redirect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/json_static)
*/
@scope("Response")
external jsonR: (~data: JSON.t, ~init: Types.responseInit=?) => Types.response = "json"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/clone)
*/
@send
external clone: Types.response => Types.response = "clone"
