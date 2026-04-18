type t = Types.formDataEntryValue

external fromString: string => t = "%identity"
external fromFile: WebApiFile.File.t => t = "%identity"

type decoded =
  | String(string)
  | File(WebApiFile.File.t)

let decode = (t: t): decoded =>
  switch t {
  | Types.String(value) => String(value)
  | Types.File(file) => File(file)
  }
