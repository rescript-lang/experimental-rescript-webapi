type t = Types.serviceWorker = private {...Types.serviceWorker}

include WebApi.Event.EventTarget.Impl({type t = t})

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
external postMessage2: (
  t,
  ~message: JSON.t,
  ~options: WebApi.ChannelMessaging.MessagePort.structuredSerializeOptions=?,
) => unit = "postMessage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/postMessage)
*/
@send
external postMessageWithOptions: (
  t,
  ~message: JSON.t,
  ~options: WebApi.ChannelMessaging.MessagePort.structuredSerializeOptions=?,
) => unit = "postMessage"

module Cache = Cache
module Clients = Clients
module NavigationPreloadManager = NavigationPreloadManager
module ServiceWorkerContainer = ServiceWorkerContainer
module ServiceWorkerGlobalScope = ServiceWorkerGlobalScope
module ServiceWorkerRegistration = ServiceWorkerRegistration
module Types = ServiceWorkerTypes
