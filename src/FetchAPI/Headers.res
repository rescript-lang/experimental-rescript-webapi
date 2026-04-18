module Types = FetchTypes

type t = Types.headers = {...Types.headers}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
 */
@new
external make: unit => t = "Headers"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
*/
@new
external fromDict: dict<string> => t = "Headers"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
*/
@new
external fromHeaders: t => t = "Headers"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers)
*/
@new
external fromKeyValueArray: array<(string, string)> => t = "Headers"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/append)
*/
@send
external append: (t, ~name: string, ~value: string) => unit = "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/delete)
*/
@send
external delete: (t, string) => unit = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/get)
*/
@send
external get: (t, string) => null<string> = "get"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/getSetCookie)
*/
@send
external getSetCookie: t => array<string> = "getSetCookie"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/has)
*/
@send
external has: (t, string) => bool = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Headers/set)
*/
@send
external set: (t, ~name: string, ~value: string) => unit = "set"
