/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match: (
  CacheTypes.cache,
  ~request: FetchTypes.request,
  ~options: CacheTypes.cacheQueryOptions=?,
) => Nullable.t<FetchTypes.response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
*/
@send
external match2: (
  CacheTypes.cache,
  ~request: string,
  ~options: CacheTypes.cacheQueryOptions=?,
) => Nullable.t<FetchTypes.response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll: (
  CacheTypes.cache,
  ~request: FetchTypes.request=?,
  ~options: CacheTypes.cacheQueryOptions=?,
) => promise<array<FetchTypes.response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
*/
@send
external matchAll2: (
  CacheTypes.cache,
  ~request: string=?,
  ~options: CacheTypes.cacheQueryOptions=?,
) => promise<array<FetchTypes.response>> = "matchAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add: (CacheTypes.cache, FetchTypes.request) => promise<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/add)
*/
@send
external add2: (CacheTypes.cache, string) => promise<unit> = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/addAll)
*/
@send
external addAll: (CacheTypes.cache, array<FetchTypes.requestInfo>) => promise<unit> = "addAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put: (
  CacheTypes.cache,
  ~request: FetchTypes.request,
  ~response: FetchTypes.response,
) => promise<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/put)
*/
@send
external put2: (
  CacheTypes.cache,
  ~request: string,
  ~response: FetchTypes.response,
) => promise<unit> = "put"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete: (
  CacheTypes.cache,
  ~request: FetchTypes.request,
  ~options: CacheTypes.cacheQueryOptions=?,
) => promise<bool> = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
*/
@send
external delete2: (
  CacheTypes.cache,
  ~request: string,
  ~options: CacheTypes.cacheQueryOptions=?,
) => promise<bool> = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys: (
  CacheTypes.cache,
  ~request: FetchTypes.request=?,
  ~options: CacheTypes.cacheQueryOptions=?,
) => promise<array<FetchTypes.request>> = "keys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
*/
@send
external keys2: (
  CacheTypes.cache,
  ~request: string=?,
  ~options: CacheTypes.cacheQueryOptions=?,
) => promise<array<FetchTypes.request>> = "keys"
