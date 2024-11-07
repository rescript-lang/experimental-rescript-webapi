open FileAndDirectoryEntriesAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/getParent)
*/
@send
external getParent: (fileSystemDirectoryEntry, fileSystemEntryCallback, errorCallback) => unit =
  "getParent"

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
