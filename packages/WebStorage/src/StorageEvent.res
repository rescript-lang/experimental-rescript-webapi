include Event.Event.Impl({type t = Types.storageEvent})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent)
*/
@new
external make: (~type_: string, ~eventInitDict: Types.storageEventInit=?) => Types.storageEvent = "StorageEvent"
