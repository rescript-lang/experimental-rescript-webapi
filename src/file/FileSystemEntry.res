type t = BaseFileAndDirectoryEntries.fileSystemEntry

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
  FileAndDirectoryEntriesTypes.fileSystemEntry,
  ~successCallback: FileAndDirectoryEntriesTypes.fileSystemEntryCallback=?,
  ~errorCallback: FileAndDirectoryEntriesTypes.errorCallback=?,
) => unit = "getParent"
