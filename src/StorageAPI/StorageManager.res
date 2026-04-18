open StorageTypes
open FileTypes

type t = StorageTypes.storageManager = {...StorageTypes.storageManager}

external current: t = "storage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/persisted)
*/
@send
external persisted: t => promise<bool> = "persisted"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/persist)
*/
@send
external persist: t => promise<bool> = "persist"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/estimate)
*/
@send
external estimate: t => promise<storageEstimate> = "estimate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StorageManager/getDirectory)
*/
@send
external getDirectory: t => promise<fileSystemDirectoryHandle> = "getDirectory"
