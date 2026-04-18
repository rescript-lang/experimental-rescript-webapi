include WebApiEvent.EventTarget.Impl({type t = Types.messagePort})

/**
Posts a message through the channel. Objects listed in transfer are transferred, not just cloned, meaning that they are no longer usable on the sending side.

Throws a "DataCloneError" DOMException if transfer contains duplicate objects or port, or if message could not be cloned.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessagePort/postMessage)
*/
@send
external postMessage: (
  Types.messagePort,
  ~message: JSON.t,
  ~transfer: array<Dict.t<string>>,
) => unit = "postMessage"

/**
Posts a message through the channel. Objects listed in transfer are transferred, not just cloned, meaning that they are no longer usable on the sending side.

Throws a "DataCloneError" DOMException if transfer contains duplicate objects or port, or if message could not be cloned.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessagePort/postMessage)
*/
@send
external postMessage2: (
  Types.messagePort,
  ~message: JSON.t,
  ~options: Types.structuredSerializeOptions=?,
) => unit = "postMessage"

/**
Begins dispatching messages received on the port.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessagePort/start)
*/
@send
external start: Types.messagePort => unit = "start"

/**
Disconnects the port, so that it is no longer active.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessagePort/close)
*/
@send
external close: Types.messagePort => unit = "close"
