open Prelude
open ServiceWorkerAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorker/postMessage)
*/
@send
external postMessage: (serviceWorker, any, array<Dict.t<string>>) => unit = "postMessage"
