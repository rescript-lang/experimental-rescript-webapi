open FetchAPI
open ServiceWorkerAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match: (cache, ~request: request, ~options: cacheQueryOptions=?) => Nullable.t<response> =
  "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match2: (cache, ~request: string, ~options: cacheQueryOptions=?) => Nullable.t<response> =
  "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll: (
  cache,
  ~request: request=?,
  ~options: cacheQueryOptions=?,
) => Promise.t<array<response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll2: (
  cache,
  ~request: string=?,
  ~options: cacheQueryOptions=?,
) => Promise.t<array<response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add: (cache, request) => Promise.t<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add2: (cache, string) => Promise.t<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/addAll)
*/
@send
external addAll: (cache, array<requestInfo>) => Promise.t<unit> = "addAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put: (cache, ~request: request, ~response: response) => Promise.t<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put2: (cache, ~request: string, ~response: response) => Promise.t<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete: (cache, ~request: request, ~options: cacheQueryOptions=?) => Promise.t<bool> =
  "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete2: (cache, ~request: string, ~options: cacheQueryOptions=?) => Promise.t<bool> =
  "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys: (
  cache,
  ~request: request=?,
  ~options: cacheQueryOptions=?,
) => Promise.t<array<request>> = "keys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys2: (
  cache,
  ~request: string=?,
  ~options: cacheQueryOptions=?,
) => Promise.t<array<request>> = "keys"
