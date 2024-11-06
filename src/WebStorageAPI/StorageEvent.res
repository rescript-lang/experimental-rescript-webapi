@@warning("-44")
@@warning("-33")
open WebStorageAPI

module StorageEvent = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageEvent)
    */
  @new
  external make: (string, storageEventInit) => storageEvent = "StorageEvent"
}
