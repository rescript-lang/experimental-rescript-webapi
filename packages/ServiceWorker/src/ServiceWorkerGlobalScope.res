include WebWorkers.WorkerGlobalScope.Impl({type t = Types.serviceWorkerGlobalScope})

/**
Forces the waiting service worker to become the active service worker.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ServiceWorkerGlobalScope/skipWaiting)
*/
@send
external skipWaiting: Types.serviceWorkerGlobalScope => promise<unit> = "skipWaiting"
