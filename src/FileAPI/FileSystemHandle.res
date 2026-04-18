module Types = FileTypes

type t = Types.fileSystemHandle = {...Types.fileSystemHandle}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
*/
@send
external isSameEntry: (t, t) => promise<bool> = "isSameEntry"
