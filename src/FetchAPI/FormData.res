open FetchAPI
open FileAPI
open DOMAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData)
*/
@new
external make: (htmlFormElement, htmlElement) => formData = "FormData"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/append)
*/
@send
external append: (formData, string, string) => unit = "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/append)
*/
@send
external append2: (formData, string, blob, string) => unit = "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/delete)
*/
@send
external delete: (formData, string) => unit = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/get)
*/
@send
external get: (formData, string) => formDataEntryValue = "get"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/getAll)
*/
@send
external getAll: (formData, string) => array<formDataEntryValue> = "getAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/has)
*/
@send
external has: (formData, string) => bool = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/set)
*/
@send
external set: (formData, string, string) => unit = "set"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/set)
*/
@send
external set2: (formData, string, blob, string) => unit = "set"
