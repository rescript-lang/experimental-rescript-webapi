/**
A native FormData value, returned as either a string or File by the browser.
[See FormDataEntryValue on MDN](https://developer.mozilla.org/docs/Web/API/FormDataEntryValue)
*/
type t = FetchTypes.formDataEntryValue

/**
Decoded result of inspecting a FormData entry value.
*/
type decoded =
  | String(string)
  | File(File.t)

let isString = (_: 'value): bool => %raw(`typeof param === "string"`)

/**
Classifies a native FormData value as a string or File.
Returns None when the value is neither a string nor a File in the current realm.
*/
let decode = (value: t): option<decoded> =>
  if value->isString {
    Some(String(Obj.magic(value)))
  } else {
    value->File.classify->Option.map(file => File(file))
  }
