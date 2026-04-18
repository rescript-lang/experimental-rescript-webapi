open Prelude

module Types = FetchTypes

type t = Types.formDataEntryValue

external fromString: string => t = "%identity"
external fromFile: File.t => t = "%identity"

/**
Represents a decoded version of the abstract `formDataEntryValue` type.
A FormData entry value is either a string or a File.
*/
type decoded =
  | String(string)
  | File(File.t)

let decode = (value: t): decoded => {
  if File.isInstanceOf(value) {
    File(unsafeConversation(value))
  } else {
    String(unsafeConversation(value))
  }
}
