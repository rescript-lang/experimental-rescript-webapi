open FetchAPI
open Prelude

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
*/
@new
external make: (~init: array<array<string>>=?) => urlSearchParams = "URLSearchParams"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
*/
@new
external make2: (~init: any=?) => urlSearchParams = "URLSearchParams"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
*/
@new
external make3: (~init: string=?) => urlSearchParams = "URLSearchParams"

/**
Appends a specified key/value pair as a new search parameter.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/append)
*/
@send
external append: (urlSearchParams, ~name: string, ~value: string) => unit = "append"

/**
Deletes the given search parameter, and its associated value, from the list of all search parameters.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/delete)
*/
@send
external delete: (urlSearchParams, ~name: string, ~value: string=?) => unit = "delete"

/**
Returns the first value associated to the given search parameter.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/get)
*/
@send
external get: (urlSearchParams, string) => string = "get"

/**
Returns all the values association with a given search parameter.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/getAll)
*/
@send
external getAll: (urlSearchParams, string) => array<string> = "getAll"

/**
Returns a Boolean indicating if such a search parameter exists.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/has)
*/
@send
external has: (urlSearchParams, ~name: string, ~value: string=?) => bool = "has"

/**
Sets the value associated to a given search parameter to the given value. If there were several values, delete the others.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/set)
*/
@send
external set: (urlSearchParams, ~name: string, ~value: string) => unit = "set"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/sort)
*/
@send
external sort: urlSearchParams => unit = "sort"
