module Types = FileTypes

type t = Types.fileSystemDirectoryHandle
type fileSystemHandle = Types.fileSystemHandle
type fileSystemFileHandle = Types.fileSystemFileHandle
type fileSystemGetFileOptions = Types.fileSystemGetFileOptions
type fileSystemGetDirectoryOptions = Types.fileSystemGetDirectoryOptions
type fileSystemRemoveOptions = Types.fileSystemRemoveOptions

external asFileSystemHandle: t => fileSystemHandle = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
*/
@send
external isSameEntry: (t, fileSystemHandle) => promise<bool> = "isSameEntry"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/getFileHandle)
*/
@send
external getFileHandle: (
  t,
  ~name: string,
  ~options: fileSystemGetFileOptions=?,
) => promise<fileSystemFileHandle> = "getFileHandle"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/getDirectoryHandle)
*/
@send
external getDirectoryHandle: (
  t,
  ~name: string,
  ~options: fileSystemGetDirectoryOptions=?,
) => promise<t> = "getDirectoryHandle"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/removeEntry)
*/
@send
external removeEntry: (
  t,
  ~name: string,
  ~options: fileSystemRemoveOptions=?,
) => promise<unit> = "removeEntry"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/resolve)
*/
@send
external resolve: (t, fileSystemHandle) => promise<array<string>> =
  "resolve"
