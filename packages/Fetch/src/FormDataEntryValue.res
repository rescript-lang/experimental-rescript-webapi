@unboxed
type t =
  | String(string)
  | File(WebApiFile.File.t)

external fromString: string => t = "%identity"
external fromFile: WebApiFile.File.t => t = "%identity"

let decode = (value: t): t => value
