open FetchAPI
open FileAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
*/
@new
external make: (~body: bodyInit=?, ~init: responseInit=?) => response = "Response"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/arrayBuffer)
*/
@send
external arrayBuffer: response => promise<ArrayBuffer.t> = "arrayBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/blob)
*/
@send
external blob: response => promise<blob> = "blob"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/bytes)
*/
@send
external bytes: response => promise<array<int>> = "bytes"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/formData)
*/
@send
external formData: response => promise<formData> = "formData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/json)
*/
@send
external json: response => promise<JSON.t> = "json"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/text)
*/
@send
external text: response => promise<string> = "text"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/error_static)
*/
@scope("Response")
external error: unit => response = "error"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/redirect_static)
*/
@scope("Response")
external redirect: (~url: string, ~status: int=?) => response = "redirect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/json_static)
*/
@scope("Response")
external jsonR: (~data: JSON.t, ~init: responseInit=?) => response = "json"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/clone)
*/
@send
external clone: response => response = "clone"
