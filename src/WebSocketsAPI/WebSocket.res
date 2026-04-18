module Types = WebSocketsTypes

type t = Types.webSocket = {...Types.webSocket}
type binaryType = Types.binaryType
type messageEvent<'t> = Types.messageEvent<'t> = {...Types.messageEvent<'t>}
type closeEvent = Types.closeEvent = {...Types.closeEvent}
type messageEventSource = Types.messageEventSource

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket)
*/
@new
external make: (~url: string, ~protocols: string=?) => t = "WebSocket"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket)
*/
@new
external make2: (~url: string, ~protocols: array<string>=?) => t = "WebSocket"

include EventTarget.Impl({type t = t})

/**
Closes the WebSocket connection, optionally using code as the the WebSocket connection close code and reason as the the WebSocket connection close reason.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/close)
*/
@send
external close: (t, ~code: int=?, ~reason: string=?) => unit = "close"

/**
Transmits data using the WebSocket connection. data can be a string, a Blob, an ArrayBuffer, or an ArrayBufferView.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/send)
*/
@send
external send: (t, DataView.t) => unit = "send"

/**
Transmits data using the WebSocket connection. data can be a string, a Blob, an ArrayBuffer, or an ArrayBufferView.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/send)
*/
@send
external send2: (t, ArrayBuffer.t) => unit = "send"

/**
Transmits data using the WebSocket connection. data can be a string, a Blob, an ArrayBuffer, or an ArrayBufferView.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/send)
*/
@send
external send3: (t, FileTypes.blob) => unit = "send"

/**
Transmits data using the WebSocket connection. data can be a string, a Blob, an ArrayBuffer, or an ArrayBufferView.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/send)
*/
@send
external send4: (t, string) => unit = "send"
