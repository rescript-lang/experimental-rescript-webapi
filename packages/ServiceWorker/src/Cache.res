/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match: (WebWorkers.Types.cache, ~request: Fetch.Types.request, ~options: WebWorkers.Types.cacheQueryOptions=?) => Nullable.t<Fetch.Types.response> =
  "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match2: (WebWorkers.Types.cache, ~request: string, ~options: WebWorkers.Types.cacheQueryOptions=?) => Nullable.t<Fetch.Types.response> =
  "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll: (
  WebWorkers.Types.cache,
  ~request: Fetch.Types.request=?,
  ~options: WebWorkers.Types.cacheQueryOptions=?,
) => promise<array<Fetch.Types.response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll2: (
  WebWorkers.Types.cache,
  ~request: string=?,
  ~options: WebWorkers.Types.cacheQueryOptions=?,
) => promise<array<Fetch.Types.response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add: (WebWorkers.Types.cache, Fetch.Types.request) => promise<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add2: (WebWorkers.Types.cache, string) => promise<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/addAll)
*/
@send
external addAll: (WebWorkers.Types.cache, array<Fetch.Types.requestInfo>) => promise<unit> = "addAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put: (WebWorkers.Types.cache, ~request: Fetch.Types.request, ~response: Fetch.Types.response) => promise<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put2: (WebWorkers.Types.cache, ~request: string, ~response: Fetch.Types.response) => promise<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete: (WebWorkers.Types.cache, ~request: Fetch.Types.request, ~options: WebWorkers.Types.cacheQueryOptions=?) => promise<bool> =
  "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete2: (WebWorkers.Types.cache, ~request: string, ~options: WebWorkers.Types.cacheQueryOptions=?) => promise<bool> =
  "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys: (
  WebWorkers.Types.cache,
  ~request: Fetch.Types.request=?,
  ~options: WebWorkers.Types.cacheQueryOptions=?,
) => promise<array<Fetch.Types.request>> = "keys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys2: (
  WebWorkers.Types.cache,
  ~request: string=?,
  ~options: WebWorkers.Types.cacheQueryOptions=?,
) => promise<array<Fetch.Types.request>> = "keys"
