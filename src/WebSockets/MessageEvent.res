open Prelude
open Event
open ChannelMessaging
open WebSockets

module MessageEvent = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessageEvent)
    */
  @new
  external make: (string, messageEventInit<'t>) => messageEvent<'t> = "MessageEvent"
}
