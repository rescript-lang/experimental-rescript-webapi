/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData)
*/
@new
external make: (~form: 'form=?, ~submitter: 'submitter=?) => Types.formData = "FormData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/append)
*/
@send
external append: (Types.formData, ~name: string, ~value: string) => unit = "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/append)
*/
@send
external appendBlob: (Types.formData, ~name: string, ~blobValue: File.Types.blob, ~filename: string=?) => unit =
  "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/delete)
*/
@send
external delete: (Types.formData, string) => unit = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/get)
*/
@send
external get: (Types.formData, string) => null<Types.formDataEntryValue> = "get"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/getAll)
*/
@send
external getAll: (Types.formData, string) => array<Types.formDataEntryValue> = "getAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/has)
*/
@send
external has: (Types.formData, string) => bool = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/entries)
*/
@send
external entries: Types.formData => Iterator.t<(string, Types.formDataEntryValue)> = "entries"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/keys)
*/
@send
external keys: Types.formData => Iterator.t<string> = "keys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/set)
*/
@send
external set: (Types.formData, ~name: string, ~value: string) => unit = "set"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FormData/set)
*/
@send
external setBlob: (Types.formData, ~name: string, ~blobValue: File.Types.blob, ~filename: string=?) => unit = "set"
