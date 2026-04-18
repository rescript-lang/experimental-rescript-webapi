/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/match)
*/
@send
external match: (
  Types.cacheStorage,
  ~request: WebApiFetch.Types.request,
  ~options: Types.multiCacheQueryOptions=?,
) => Nullable.t<WebApiFetch.Types.response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/match)
*/
@send
external match2: (
  Types.cacheStorage,
  ~request: string,
  ~options: Types.multiCacheQueryOptions=?,
) => Nullable.t<WebApiFetch.Types.response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/has)
*/
@send
external has: (Types.cacheStorage, string) => promise<bool> = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/open)
*/
@send
external open_: (Types.cacheStorage, string) => promise<Types.cache> = "open"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/delete)
*/
@send
external delete: (Types.cacheStorage, string) => promise<bool> = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/keys)
*/
@send
external keys: Types.cacheStorage => promise<array<string>> = "keys"
