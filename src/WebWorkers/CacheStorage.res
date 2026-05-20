/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/match)
*/
@scope("globalThis.caches")
external match: (
  ~request: FetchTypes.request,
  ~options: WebWorkersTypes.multiCacheQueryOptions=?,
) => Nullable.t<FetchTypes.response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/match)
*/
@scope("globalThis.caches")
external match2: (
  ~request: string,
  ~options: WebWorkersTypes.multiCacheQueryOptions=?,
) => Nullable.t<FetchTypes.response> = "match"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/has)
*/
@scope("globalThis.caches")
external has: string => promise<bool> = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/open)
*/
@scope("globalThis.caches")
external open_: string => promise<WebWorkersTypes.cache> = "open"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/delete)
*/
@scope("globalThis.caches")
external delete: string => promise<bool> = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage/keys)
*/
@scope("globalThis.caches")
external keys: unit => promise<array<string>> = "keys"
