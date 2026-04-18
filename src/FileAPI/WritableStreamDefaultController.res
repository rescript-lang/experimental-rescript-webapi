module Types = FileTypes

type t = Types.writableStreamDefaultController = {...Types.writableStreamDefaultController}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultController/error)
*/
@send
external error: (t, ~e: JSON.t=?) => unit = "error"
