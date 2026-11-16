include Event.Impl({type t = WebStorageTypes.storageEvent})

external asEvent: WebStorageTypes.storageEvent => DOM.event = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent)
*/
@new
external make: (
  ~type_: string,
  ~eventInitDict: WebStorageTypes.storageEventInit=?,
) => WebStorageTypes.storageEvent = "StorageEvent"
