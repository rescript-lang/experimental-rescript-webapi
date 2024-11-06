open Prelude
open Event
open ChannelMessaging

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
