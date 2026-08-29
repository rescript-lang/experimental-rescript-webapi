/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/match)
*/
@send
external match: (
  CacheTypes.cacheStorage,
  ~request: FetchTypes.request,
  ~options: CacheTypes.multiCacheQueryOptions=?,
) => promise<option<FetchTypes.response>> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/match)
*/
@send
external match2: (
  CacheTypes.cacheStorage,
  ~request: string,
  ~options: CacheTypes.multiCacheQueryOptions=?,
) => promise<option<FetchTypes.response>> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/has)
*/
@send
external has: (CacheTypes.cacheStorage, string) => promise<bool> = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/open)
*/
@send
external open_: (CacheTypes.cacheStorage, string) => promise<CacheTypes.cache> = "open"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/delete)
*/
@send
external delete: (CacheTypes.cacheStorage, string) => promise<bool> = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/keys)
*/
@send
external keys: CacheTypes.cacheStorage => promise<array<string>> = "keys"
