@@warning("-44")
@@warning("-33")
open WebSocketsAPI

module CloseEvent = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CloseEvent)
    */
  @new
  external make: (string, closeEventInit) => closeEvent = "CloseEvent"
}
