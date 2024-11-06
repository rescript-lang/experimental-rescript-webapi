@@warning("-44")
@@warning("-33")
open WebSockets
open Prelude
open File

module WebSocket = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket)
    */
  @new
  external make: (string, unknown) => webSocket = "WebSocket"
  /**
    Closes the WebSocket connection, optionally using code as the the WebSocket connection close code and reason as the the WebSocket connection close reason.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/close)
    */
  @send
  external close: (webSocket, int, string) => unit = "close"

  /**
    Transmits data using the WebSocket connection. data can be a string, a Blob, an ArrayBuffer, or an ArrayBufferView.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/send)
    */
  @send
  external send: (webSocket, unknown) => unit = "send"
}
