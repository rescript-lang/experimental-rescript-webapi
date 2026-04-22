/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
*/
@send
external isSameEntry: (Types.fileSystemHandle, Types.fileSystemHandle) => promise<bool> =
  "isSameEntry"
