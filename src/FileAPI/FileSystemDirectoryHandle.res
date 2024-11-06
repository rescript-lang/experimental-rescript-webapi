@@warning("-33")
open FileAPI

module FileSystemDirectoryHandle = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/getFileHandle)
    */
  @send
  external getFileHandle: (
    fileSystemDirectoryHandle,
    string,
    fileSystemGetFileOptions,
  ) => Promise.t<fileSystemFileHandle> = "getFileHandle"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/getDirectoryHandle)
    */
  @send
  external getDirectoryHandle: (
    fileSystemDirectoryHandle,
    string,
    fileSystemGetDirectoryOptions,
  ) => Promise.t<fileSystemDirectoryHandle> = "getDirectoryHandle"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/removeEntry)
    */
  @send
  external removeEntry: (
    fileSystemDirectoryHandle,
    string,
    fileSystemRemoveOptions,
  ) => Promise.t<unit> = "removeEntry"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/resolve)
    */
  @send
  external resolve: (fileSystemDirectoryHandle, fileSystemHandle) => Promise.t<array<string>> =
    "resolve"
}
