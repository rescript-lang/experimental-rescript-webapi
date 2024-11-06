open Prelude
open FileAndDirectoryEntries

module FileSystemDirectoryReader = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryReader/readEntries)
    */
  @send
  external readEntries: (
    fileSystemDirectoryReader,
    fileSystemEntriesCallback,
    errorCallback,
  ) => unit = "readEntries"
}
