type t = FileTypes.writableStreamDefaultController = private {
  ...FileTypes.writableStreamDefaultController,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultController/error)
*/
@send
external error: (FileTypes.writableStreamDefaultController, ~e: JSON.t=?) => unit = "error"
