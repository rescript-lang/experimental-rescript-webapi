include Event.EventTarget.Impl({type t = Types.serviceWorker})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/postMessage)
*/
@send
external postMessage: (Types.serviceWorker, ~message: JSON.t, ~transfer: array<Dict.t<string>>) => unit =
  "postMessage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/postMessage)
*/
@send
external postMessage2: (
  Types.serviceWorker,
  ~message: JSON.t,
  ~options: ChannelMessaging.Types.structuredSerializeOptions=?,
) => unit = "postMessage"
