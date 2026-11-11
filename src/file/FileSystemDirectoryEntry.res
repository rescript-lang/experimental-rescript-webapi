type t = BaseFileAndDirectoryEntries.fileSystemDirectoryEntry

external asFileSystemEntry: t => FileSystemEntry.t = "%identity"
@get external isFile: t => bool = "isFile"
@get external isDirectory: t => bool = "isDirectory"
@get external name: t => string = "name"
@get external fullPath: t => string = "fullPath"
@get external filesystem: t => FileAndDirectoryEntriesTypes.fileSystem = "filesystem"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemEntry/getParent)
*/
@throws(JsExn) @send
external getParent: (
  FileAndDirectoryEntriesTypes.fileSystemDirectoryEntry,
  ~successCallback: FileAndDirectoryEntriesTypes.fileSystemEntryCallback=?,
  ~errorCallback: FileAndDirectoryEntriesTypes.errorCallback=?,
) => unit = "getParent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/createReader)
*/
@send
external createReader: FileAndDirectoryEntriesTypes.fileSystemDirectoryEntry => FileAndDirectoryEntriesTypes.fileSystemDirectoryReader =
  "createReader"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/getFile)
*/
@throws(JsExn) @send
external getFile: (
  FileAndDirectoryEntriesTypes.fileSystemDirectoryEntry,
  ~path: string=?,
  ~options: FileAndDirectoryEntriesTypes.fileSystemFlags=?,
  ~successCallback: FileAndDirectoryEntriesTypes.fileSystemEntryCallback=?,
  ~errorCallback: FileAndDirectoryEntriesTypes.errorCallback=?,
) => unit = "getFile"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry/getDirectory)
*/
@throws(JsExn) @send
external getDirectory: (
  FileAndDirectoryEntriesTypes.fileSystemDirectoryEntry,
  ~path: string=?,
  ~options: FileAndDirectoryEntriesTypes.fileSystemFlags=?,
  ~successCallback: FileAndDirectoryEntriesTypes.fileSystemEntryCallback=?,
  ~errorCallback: FileAndDirectoryEntriesTypes.errorCallback=?,
) => unit = "getDirectory"
