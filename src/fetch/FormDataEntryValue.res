/**
A native FormData value, returned as either a string or File by the browser.
[See FormDataEntryValue on MDN](https://developer.mozilla.org/docs/Web/API/FormDataEntryValue)
*/
type t = FetchTypes.formDataEntryValue

let isString = (_: 'value): bool => %raw(`typeof param === "string"`)

/**
Returns the string value when this native FormData value is a string.
*/
let asString = (value: t): option<string> =>
  if value->isString {
    Some(Obj.magic(value))
  } else {
    None
  }

/**
Classifies this native FormData value as a File in the current JavaScript realm.
*/
let asFile = File.classify
