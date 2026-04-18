/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match: (
  WebApiWebWorkers.Types.cache,
  ~request: WebApiFetch.Types.request,
  ~options: WebApiWebWorkers.Types.cacheQueryOptions=?,
) => Nullable.t<WebApiFetch.Types.response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match2: (
  WebApiWebWorkers.Types.cache,
  ~request: string,
  ~options: WebApiWebWorkers.Types.cacheQueryOptions=?,
) => Nullable.t<WebApiFetch.Types.response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll: (
  WebApiWebWorkers.Types.cache,
  ~request: WebApiFetch.Types.request=?,
  ~options: WebApiWebWorkers.Types.cacheQueryOptions=?,
) => promise<array<WebApiFetch.Types.response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll2: (
  WebApiWebWorkers.Types.cache,
  ~request: string=?,
  ~options: WebApiWebWorkers.Types.cacheQueryOptions=?,
) => promise<array<WebApiFetch.Types.response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add: (WebApiWebWorkers.Types.cache, WebApiFetch.Types.request) => promise<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add2: (WebApiWebWorkers.Types.cache, string) => promise<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/addAll)
*/
@send
external addAll: (WebApiWebWorkers.Types.cache, array<WebApiFetch.Types.requestInfo>) => promise<unit> =
  "addAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put: (
  WebApiWebWorkers.Types.cache,
  ~request: WebApiFetch.Types.request,
  ~response: WebApiFetch.Types.response,
) => promise<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put2: (
  WebApiWebWorkers.Types.cache,
  ~request: string,
  ~response: WebApiFetch.Types.response,
) => promise<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete: (
  WebApiWebWorkers.Types.cache,
  ~request: WebApiFetch.Types.request,
  ~options: WebApiWebWorkers.Types.cacheQueryOptions=?,
) => promise<bool> = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete2: (
  WebApiWebWorkers.Types.cache,
  ~request: string,
  ~options: WebApiWebWorkers.Types.cacheQueryOptions=?,
) => promise<bool> = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys: (
  WebApiWebWorkers.Types.cache,
  ~request: WebApiFetch.Types.request=?,
  ~options: WebApiWebWorkers.Types.cacheQueryOptions=?,
) => promise<array<WebApiFetch.Types.request>> = "keys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys2: (
  WebApiWebWorkers.Types.cache,
  ~request: string=?,
  ~options: WebApiWebWorkers.Types.cacheQueryOptions=?,
) => promise<array<WebApiFetch.Types.request>> = "keys"
