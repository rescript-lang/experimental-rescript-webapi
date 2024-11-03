@@warning("-30")

open Prelude
open Event

/**
This Channel Messaging API interface represents one of the two ports of a MessageChannel, allowing messages to be sent from one port and listening out for them arriving at the other.
[See MessagePort on MDN](https://developer.mozilla.org/docs/Web/API/MessagePort)
*/
type messagePort = {
  ...eventTarget,
}

module MessagePort = {
  /**
    Posts a message through the channel. Objects listed in transfer are transferred, not just cloned, meaning that they are no longer usable on the sending side.

Throws a "DataCloneError" DOMException if transfer contains duplicate objects or port, or if message could not be cloned.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessagePort/postMessage)
    */
  @send
  external postMessage: (messagePort, any, array<Dict.t<string>>) => unit = "postMessage"

  /**
    Begins dispatching messages received on the port.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessagePort/start)
    */
  @send
  external start: messagePort => unit = "start"

  /**
    Disconnects the port, so that it is no longer active.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessagePort/close)
    */
  @send
  external close: messagePort => unit = "close"
}
