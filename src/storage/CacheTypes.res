/**
Provides a storage mechanism for Request / Response object pairs that are cached, for example as part of the Service Worker life cycle. The Cache interface is also available in window contexts.
[See Cache on MDN](https://developer.mozilla.org/docs/Web/API/Cache)
*/
@editor.completeFrom(Cache)
type cache = private {}

/**
The storage for Cache objects.
[See CacheStorage on MDN](https://developer.mozilla.org/docs/Web/API/CacheStorage)
*/
@editor.completeFrom(CacheStorage)
type cacheStorage = private {}

type cacheQueryOptions = {
  mutable ignoreSearch?: bool,
  mutable ignoreMethod?: bool,
  mutable ignoreVary?: bool,
}

type multiCacheQueryOptions = {
  ...cacheQueryOptions,
  mutable cacheName?: string,
}
