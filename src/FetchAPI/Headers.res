open FetchAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
*/
@new
external make: (~init: headersInit=?) => headers = "Headers"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/append)
*/
@send
external append: (headers, ~name: string, ~value: string) => unit = "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/delete)
*/
@send
external delete: (headers, string) => unit = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/get)
*/
@send
external get: (headers, string) => string = "get"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/getSetCookie)
*/
@send
external getSetCookie: headers => array<string> = "getSetCookie"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/has)
*/
@send
external has: (headers, string) => bool = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/set)
*/
@send
external set: (headers, ~name: string, ~value: string) => unit = "set"
