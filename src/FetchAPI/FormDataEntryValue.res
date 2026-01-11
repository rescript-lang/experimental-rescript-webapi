open Prelude
open FetchAPI
open FileAPI

external fromString: string => formDataEntryValue = "%identity"
external fromFile: file => formDataEntryValue = "%identity"

/**
Represents a decoded version of the abstract `formDataEntryValue` type.
A FormData entry value is either a string or a File.
*/
type decoded =
  | String(string)
  | File(file)

let decode = (t: formDataEntryValue): decoded => {
  if File.isInstanceOf(t) {
    File(unsafeConversation(t))
  } else {
    String(unsafeConversation(t))
  }
}
