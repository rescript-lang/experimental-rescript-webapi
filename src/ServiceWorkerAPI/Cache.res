open FetchAPI
open ServiceWorkerAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match: (
  cache,
  ~request: requestInfo,
  ~options: cacheQueryOptions,
) => Nullable.t<response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll: (
  cache,
  ~request: requestInfo,
  ~options: cacheQueryOptions,
) => Promise.t<array<response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add: (cache, requestInfo) => Promise.t<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/addAll)
*/
@send
external addAll: (cache, array<requestInfo>) => Promise.t<unit> = "addAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put: (cache, ~request: requestInfo, ~response: response) => Promise.t<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete: (cache, ~request: requestInfo, ~options: cacheQueryOptions) => Promise.t<bool> =
  "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys: (
  cache,
  ~request: requestInfo,
  ~options: cacheQueryOptions,
) => Promise.t<array<request>> = "keys"
