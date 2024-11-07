open FileAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
*/
@send
external isSameEntry: (fileSystemDirectoryHandle, fileSystemHandle) => Promise.t<bool> =
  "isSameEntry"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/getFileHandle)
*/
@send
external getFileHandle: (
  fileSystemDirectoryHandle,
  ~name: string,
  ~options: fileSystemGetFileOptions,
) => Promise.t<fileSystemFileHandle> = "getFileHandle"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/getDirectoryHandle)
*/
@send
external getDirectoryHandle: (
  fileSystemDirectoryHandle,
  ~name: string,
  ~options: fileSystemGetDirectoryOptions,
) => Promise.t<fileSystemDirectoryHandle> = "getDirectoryHandle"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/removeEntry)
*/
@send
external removeEntry: (
  fileSystemDirectoryHandle,
  ~name: string,
  ~options: fileSystemRemoveOptions,
) => Promise.t<unit> = "removeEntry"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/resolve)
*/
@send
external resolve: (fileSystemDirectoryHandle, fileSystemHandle) => Promise.t<array<string>> =
  "resolve"
