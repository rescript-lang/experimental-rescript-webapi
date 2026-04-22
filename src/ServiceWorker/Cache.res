/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match: (
  WebApi.WebWorkers.Types.cache,
  ~request: WebApi.Fetch.Types.request,
  ~options: WebApi.WebWorkers.Types.cacheQueryOptions=?,
) => Nullable.t<WebApi.Fetch.Types.response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match2: (
  WebApi.WebWorkers.Types.cache,
  ~request: string,
  ~options: WebApi.WebWorkers.Types.cacheQueryOptions=?,
) => Nullable.t<WebApi.Fetch.Types.response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll: (
  WebApi.WebWorkers.Types.cache,
  ~request: WebApi.Fetch.Types.request=?,
  ~options: WebApi.WebWorkers.Types.cacheQueryOptions=?,
) => promise<array<WebApi.Fetch.Types.response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll2: (
  WebApi.WebWorkers.Types.cache,
  ~request: string=?,
  ~options: WebApi.WebWorkers.Types.cacheQueryOptions=?,
) => promise<array<WebApi.Fetch.Types.response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add: (WebApi.WebWorkers.Types.cache, WebApi.Fetch.Types.request) => promise<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add2: (WebApi.WebWorkers.Types.cache, string) => promise<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/addAll)
*/
@send
external addAll: (
  WebApi.WebWorkers.Types.cache,
  array<WebApi.Fetch.Types.requestInfo>,
) => promise<unit> = "addAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put: (
  WebApi.WebWorkers.Types.cache,
  ~request: WebApi.Fetch.Types.request,
  ~response: WebApi.Fetch.Types.response,
) => promise<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put2: (
  WebApi.WebWorkers.Types.cache,
  ~request: string,
  ~response: WebApi.Fetch.Types.response,
) => promise<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete: (
  WebApi.WebWorkers.Types.cache,
  ~request: WebApi.Fetch.Types.request,
  ~options: WebApi.WebWorkers.Types.cacheQueryOptions=?,
) => promise<bool> = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete2: (
  WebApi.WebWorkers.Types.cache,
  ~request: string,
  ~options: WebApi.WebWorkers.Types.cacheQueryOptions=?,
) => promise<bool> = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys: (
  WebApi.WebWorkers.Types.cache,
  ~request: WebApi.Fetch.Types.request=?,
  ~options: WebApi.WebWorkers.Types.cacheQueryOptions=?,
) => promise<array<WebApi.Fetch.Types.request>> = "keys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys2: (
  WebApi.WebWorkers.Types.cache,
  ~request: string=?,
  ~options: WebApi.WebWorkers.Types.cacheQueryOptions=?,
) => promise<array<WebApi.Fetch.Types.request>> = "keys"
