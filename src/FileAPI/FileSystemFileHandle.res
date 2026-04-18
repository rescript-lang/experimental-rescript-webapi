module Types = FileTypes

type t = Types.fileSystemFileHandle = {...Types.fileSystemFileHandle}
type fileSystemHandle = Types.fileSystemHandle = {...Types.fileSystemHandle}
type file = Types.file = {...Types.file}
type fileSystemCreateWritableOptions =
  Types.fileSystemCreateWritableOptions = {...Types.fileSystemCreateWritableOptions}
type fileSystemWritableFileStream =
  Types.fileSystemWritableFileStream = {...Types.fileSystemWritableFileStream}

external asFileSystemHandle: t => fileSystemHandle = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
*/
@send
external isSameEntry: (t, fileSystemHandle) => promise<bool> = "isSameEntry"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle/getFile)
*/
@send
external getFile: t => promise<file> = "getFile"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle/createWritable)
*/
@send
external createWritable: (
  t,
  ~options: fileSystemCreateWritableOptions=?,
) => promise<fileSystemWritableFileStream> = "createWritable"
