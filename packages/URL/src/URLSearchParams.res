/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
*/
@new
external make: unit => Types.urlSearchParams = "URLSearchParams"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
*/
@new
external fromKeyValueArray: array<(string, string)> => Types.urlSearchParams = "URLSearchParams"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
*/
@new
external fromDict: dict<string> => Types.urlSearchParams = "URLSearchParams"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
*/
@new
external fromString: string => Types.urlSearchParams = "URLSearchParams"

/**
Appends a specified key/value pair as a new search parameter.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/append)
*/
@send
external append: (Types.urlSearchParams, ~name: string, ~value: string) => unit = "append"

/**
Deletes the given search parameter, and its associated value, from the list of all search parameters.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/delete)
*/
@send
external delete: (Types.urlSearchParams, ~name: string, ~value: string=?) => unit = "delete"

/**
Returns key/value pairs in the same order as they appear in the query string.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/entries)
*/
@send
external entries: Types.urlSearchParams => Iterator.t<(string, string)> = "entries"

/**
Returns the first value associated to the given search parameter.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/get)
*/
@send
external get: (Types.urlSearchParams, string) => null<string> = "get"

/**
Returns all the values association with a given search parameter.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/getAll)
*/
@send
external getAll: (Types.urlSearchParams, string) => array<string> = "getAll"

/**
Returns a Boolean indicating if such a search parameter exists.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/has)
*/
@send
external has: (Types.urlSearchParams, ~name: string, ~value: string=?) => bool = "has"

/**
Returns an iterator allowing iteration through all keys contained in this object.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/keys)
*/
@send
external keys: Types.urlSearchParams => Iterator.t<string> = "keys"

/**
Sets the value associated to a given search parameter to the given value. If there were several values, delete the others.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/set)
*/
@send
external set: (Types.urlSearchParams, ~name: string, ~value: string) => unit = "set"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/sort)
*/
@send
external sort: Types.urlSearchParams => unit = "sort"

/**
Returns the query string suitable for use in a WebApiURL, without the question mark.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/toString)
*/
@send
external toString: Types.urlSearchParams => string = "toString"

/**
Returns an iterator allowing iteration through all values contained in this object.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/URLSearchParams/values)
*/
@send
external values: Types.urlSearchParams => Iterator.t<string> = "values"
