external asFileSystemHandle: Types.fileSystemDirectoryHandle => Types.fileSystemHandle = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
*/
@send
external isSameEntry: (Types.fileSystemDirectoryHandle, Types.fileSystemHandle) => promise<bool> =
  "isSameEntry"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/getFileHandle)
*/
@send
external getFileHandle: (
  Types.fileSystemDirectoryHandle,
  ~name: string,
  ~options: Types.fileSystemGetFileOptions=?,
) => promise<Types.fileSystemFileHandle> = "getFileHandle"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/getDirectoryHandle)
*/
@send
external getDirectoryHandle: (
  Types.fileSystemDirectoryHandle,
  ~name: string,
  ~options: Types.fileSystemGetDirectoryOptions=?,
) => promise<Types.fileSystemDirectoryHandle> = "getDirectoryHandle"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/removeEntry)
*/
@send
external removeEntry: (
  Types.fileSystemDirectoryHandle,
  ~name: string,
  ~options: Types.fileSystemRemoveOptions=?,
) => promise<unit> = "removeEntry"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/resolve)
*/
@send
external resolve: (
  Types.fileSystemDirectoryHandle,
  Types.fileSystemHandle,
) => promise<array<string>> = "resolve"
