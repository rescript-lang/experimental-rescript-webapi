external asFileSystemEntry: Types.fileSystemDirectoryEntry => Types.fileSystemEntry = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/getParent)
*/
@send
external getParent: (
  Types.fileSystemDirectoryEntry,
  ~successCallback: Types.fileSystemEntryCallback=?,
  ~errorCallback: Types.errorCallback=?,
) => unit = "getParent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/createReader)
*/
@send
external createReader: Types.fileSystemDirectoryEntry => Types.fileSystemDirectoryReader =
  "createReader"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/getFile)
*/
@send
external getFile: (
  Types.fileSystemDirectoryEntry,
  ~path: string=?,
  ~options: Types.fileSystemFlags=?,
  ~successCallback: Types.fileSystemEntryCallback=?,
  ~errorCallback: Types.errorCallback=?,
) => unit = "getFile"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/getDirectory)
*/
@send
external getDirectory: (
  Types.fileSystemDirectoryEntry,
  ~path: string=?,
  ~options: Types.fileSystemFlags=?,
  ~successCallback: Types.fileSystemEntryCallback=?,
  ~errorCallback: Types.errorCallback=?,
) => unit = "getDirectory"
