/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
*/
@new
external make: unit => Types.headers = "Headers"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
*/
@new
external fromDict: dict<string> => Types.headers = "Headers"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
*/
@new
external fromHeaders: Types.headers => Types.headers = "Headers"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
*/
@new
external fromKeyValueArray: array<(string, string)> => Types.headers = "Headers"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/append)
*/
@send
external append: (Types.headers, ~name: string, ~value: string) => unit = "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/delete)
*/
@send
external delete: (Types.headers, string) => unit = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/get)
*/
@send
external get: (Types.headers, string) => null<string> = "get"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/getSetCookie)
*/
@send
external getSetCookie: Types.headers => array<string> = "getSetCookie"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/has)
*/
@send
external has: (Types.headers, string) => bool = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/set)
*/
@send
external set: (Types.headers, ~name: string, ~value: string) => unit = "set"
