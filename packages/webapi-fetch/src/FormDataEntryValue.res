open Prelude
open Fetch
open FileTypes

external fromString: string => formDataEntryValue = "%identity"
external fromFile: file => formDataEntryValue = "%identity"

/**
Represents a decoded version of the abstract `formDataEntryValue` type.
A FormData entry value is either a string or a File.
*/
type decoded =
  | String(string)
  | File(file)

let isFileInstance = (_: 't): bool => %raw(`param instanceof File`)

let decode = (t: formDataEntryValue): decoded => {
  if isFileInstance(t) {
    File(unsafeConversation(t))
  } else {
    String(unsafeConversation(t))
  }
}
