@@warning("-44")
@@warning("-33")
open Prelude
open FileAPI

module WritableStreamDefaultController = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultController/error)
    */
  @send
  external error: (writableStreamDefaultController, any) => unit = "error"
}
