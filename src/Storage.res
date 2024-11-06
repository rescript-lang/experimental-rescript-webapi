@@warning("-30")

open File

/**
[See StorageManager on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager)
*/
type storageManager = {}

type storageEstimate = {
  mutable usage: int,
  mutable quota: int,
}

module StorageManager = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/persisted)
    */
  @send
  external persisted: storageManager => Promise.t<bool> = "persisted"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/persist)
    */
  @send
  external persist: storageManager => Promise.t<bool> = "persist"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/estimate)
    */
  @send
  external estimate: storageManager => Promise.t<storageEstimate> = "estimate"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/getDirectory)
    */
  @send
  external getDirectory: storageManager => Promise.t<fileSystemDirectoryHandle> = "getDirectory"
}
