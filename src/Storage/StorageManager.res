open File

@@warning("-30")
/**
[See StorageManager on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager)
*/
@editor.completeFrom(StorageManager)
type storageManager = {}

type storageEstimate = {
  mutable usage?: int,
  mutable quota?: int,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/persisted)
*/
@send
external persisted: storageManager => promise<bool> = "persisted"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/persist)
*/
@send
external persist: storageManager => promise<bool> = "persist"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/estimate)
*/
@send
external estimate: storageManager => promise<storageEstimate> = "estimate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/getDirectory)
*/
@send
external getDirectory: storageManager => promise<fileSystemDirectoryHandle> = "getDirectory"
