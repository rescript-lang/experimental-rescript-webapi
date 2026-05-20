/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/persisted)
*/
@scope("globalThis.navigator.storage")
external persisted: unit => promise<bool> = "persisted"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/persist)
*/
@scope("globalThis.navigator.storage")
external persist: unit => promise<bool> = "persist"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/estimate)
*/
@scope("globalThis.navigator.storage")
external estimate: unit => promise<StorageTypes.storageEstimate> = "estimate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/getDirectory)
*/
@scope("globalThis.navigator.storage")
external getDirectory: unit => promise<FileTypes.fileSystemDirectoryHandle> = "getDirectory"
