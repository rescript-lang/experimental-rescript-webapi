@@warning("-44")
@@warning("-33")
open FileAndDirectoryEntries

module FileSystemEntry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/getParent)
    */
  @send
  external getParent: (fileSystemEntry, fileSystemEntryCallback, errorCallback) => unit =
    "getParent"
}
