type t = Types.serviceWorker

include WebApiEvent.EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiServiceWorker/postMessage)
*/
@send
external postMessage: (
  t,
  ~message: JSON.t,
  ~transfer: array<Dict.t<string>>,
) => unit = "postMessage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiServiceWorker/postMessage)
*/
@send
external postMessage2: (
  t,
  ~message: JSON.t,
  ~options: WebApiChannelMessaging.MessagePort.structuredSerializeOptions=?,
) => unit = "postMessage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiServiceWorker/postMessage)
*/
@send
external postMessageWithOptions: (
  t,
  ~message: JSON.t,
  ~options: WebApiChannelMessaging.MessagePort.structuredSerializeOptions=?,
) => unit = "postMessage"
