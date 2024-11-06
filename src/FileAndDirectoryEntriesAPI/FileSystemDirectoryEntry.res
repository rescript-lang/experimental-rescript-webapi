@@warning("-33")
open FileAndDirectoryEntriesAPI

module FileSystemDirectoryEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/createReader)
    */
  @send
  external createReader: fileSystemDirectoryEntry => fileSystemDirectoryReader = "createReader"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/getFile)
    */
  @send
  external getFile: (
    fileSystemDirectoryEntry,
    string,
    fileSystemFlags,
    fileSystemEntryCallback,
    errorCallback,
  ) => unit = "getFile"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/getDirectory)
    */
  @send
  external getDirectory: (
    fileSystemDirectoryEntry,
    string,
    fileSystemFlags,
    fileSystemEntryCallback,
    errorCallback,
  ) => unit = "getDirectory"
}
