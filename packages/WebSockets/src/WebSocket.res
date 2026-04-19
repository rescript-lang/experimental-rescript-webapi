module Blob = WebApiFile.Blob

type t = Types.webSocket
type binaryType = Types.binaryType
type messageEvent<'t> = Types.messageEvent<'t> = {...Types.messageEvent<'t>}
type closeEvent = Types.closeEvent = {...Types.closeEvent}
type messageEventSource = Types.messageEventSource

/**
`fromURL(~url: string, ~protocols: string=?)`

The WebSocket() constructor creates a new WebSocket connection from a URL string and an optional single protocol.

Source shape:
- `url`: ReScript [string](https://rescript-lang.org/docs/manual/primitive-types/#string) for the [WebSocket URL](https://developer.mozilla.org/docs/Web/API/WebSocket/WebSocket) to connect to.
- `protocols`: optional ReScript [string](https://rescript-lang.org/docs/manual/primitive-types/#string) for a single WebSocket sub-protocol name.

```res
let socket = WebSocket.fromURL(~url="wss://example.com/socket")
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket)
*/
@new
external fromURL: (~url: string, ~protocols: string=?) => t = "WebSocket"

/**
`fromURLWithProtocols(~url: string, ~protocols: array<string>)`

The WebSocket() constructor creates a new WebSocket connection from a URL string and multiple protocol names.

Source shape:
- `url`: ReScript [string](https://rescript-lang.org/docs/manual/primitive-types/#string) for the [WebSocket URL](https://developer.mozilla.org/docs/Web/API/WebSocket/WebSocket) to connect to.
- `protocols`: ReScript [array](https://rescript-lang.org/docs/manual/api/stdlib/array) of protocol names accepted by the MDN [WebSocket()](https://developer.mozilla.org/docs/Web/API/WebSocket/WebSocket) constructor.

```res
let socket =
  WebSocket.fromURLWithProtocols(
    ~url="wss://example.com/socket",
    ~protocols=["chat", "superchat"],
  )
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket)
*/
@new
external fromURLWithProtocols: (~url: string, ~protocols: array<string>) => t = "WebSocket"

include WebApiEvent.EventTarget.Impl({type t = t})

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
external sendArrayBuffer: (t, ArrayBuffer.t) => unit = "send"

/**
Transmits data using the WebSocket connection. data can be a string, a Blob, an ArrayBuffer, or an ArrayBufferView.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/send)
*/
external sendBlob: (t, Blob.t) => unit = "send"

/**
Transmits data using the WebSocket connection. data can be a string, a Blob, an ArrayBuffer, or an ArrayBufferView.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebSocket/send)
*/
external sendString: (t, string) => unit = "send"
