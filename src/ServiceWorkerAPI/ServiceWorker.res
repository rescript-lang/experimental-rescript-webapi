open ServiceWorkerTypes

type t = serviceWorker = {...serviceWorker}

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/postMessage)
*/
@send
external postMessage: (t, ~message: JSON.t, ~transfer: array<Dict.t<string>>) => unit =
  "postMessage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/postMessage)
*/
@send
external postMessageWithOptions: (
  t,
  ~message: JSON.t,
  ~options: MessagePort.structuredSerializeOptions=?,
) => unit = "postMessage"
