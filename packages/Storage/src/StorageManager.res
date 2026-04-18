/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/persisted)
*/
@send
external persisted: Types.storageManager => promise<bool> = "persisted"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/persist)
*/
@send
external persist: Types.storageManager => promise<bool> = "persist"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/estimate)
*/
@send
external estimate: Types.storageManager => promise<Types.storageEstimate> = "estimate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/getDirectory)
*/
@send
external getDirectory: Types.storageManager => promise<File.Types.fileSystemDirectoryHandle> =
  "getDirectory"
