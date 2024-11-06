@@warning("-44")
@@warning("-33")
open WebSockets

module MessageEvent = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MessageEvent)
    */
  @new
  external make: (string, messageEventInit<'t>) => messageEvent<'t> = "MessageEvent"
}
