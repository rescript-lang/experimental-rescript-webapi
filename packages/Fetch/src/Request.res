/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request)
*/
@new
external fromURL: (string, ~init: Types.requestInit=?) => Types.request = "Request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request)
*/
@new
external fromRequest: (Types.request, ~init: Types.requestInit=?) => Types.request = "Request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/arrayBuffer)
*/
@send
external arrayBuffer: Types.request => promise<ArrayBuffer.t> = "arrayBuffer"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/blob)
*/
@send
external blob: Types.request => promise<File.Types.blob> = "blob"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/bytes)
*/
@send
external bytes: Types.request => promise<array<int>> = "bytes"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/formData)
*/
@send
external formData: Types.request => promise<Types.formData> = "formData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/json)
*/
@send
external json: Types.request => promise<JSON.t> = "json"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/text)
*/
@send
external text: Types.request => promise<string> = "text"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/clone)
*/
@send
external clone: Types.request => Types.request = "clone"
