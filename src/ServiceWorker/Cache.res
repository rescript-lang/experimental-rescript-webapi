open Prelude
open Event
open PushManager
open Notification
open Fetch
open ServiceWorker

module Cache = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/match)
    */
  @send
  external match: (cache, requestInfo, cacheQueryOptions) => Nullable.t<response> = "match"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/matchAll)
    */
  @send
  external matchAll: (cache, requestInfo, cacheQueryOptions) => Promise.t<array<response>> =
    "matchAll"

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
  external put: (cache, requestInfo, response) => Promise.t<unit> = "put"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/delete)
    */
  @send
  external delete: (cache, requestInfo, cacheQueryOptions) => Promise.t<bool> = "delete"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Cache/keys)
    */
  @send
  external keys: (cache, requestInfo, cacheQueryOptions) => Promise.t<array<request>> = "keys"
}
