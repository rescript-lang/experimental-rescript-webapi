open ServiceWorkerTypes

include WorkerGlobalScope.Impl({type t = serviceWorkerGlobalScope})

/**
Forces the waiting service worker to become the active service worker.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerGlobalScope/skipWaiting)
*/
@send
external skipWaiting: serviceWorkerGlobalScope => promise<unit> = "skipWaiting"
