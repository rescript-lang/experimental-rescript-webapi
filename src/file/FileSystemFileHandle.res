type t = FileTypes.fileSystemFileHandle

external asFileSystemHandle: t => FileSystemHandle.t = "%identity"
@get external kind: t => FileTypes.fileSystemHandleKind = "kind"
@get external name: t => string = "name"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
*/
@send
external isSameEntry: (
  FileTypes.fileSystemFileHandle,
  FileTypes.fileSystemHandle,
) => promise<bool> = "isSameEntry"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle/getFile)
*/
@send
external getFile: FileTypes.fileSystemFileHandle => promise<FileTypes.file> = "getFile"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle/createWritable)
*/
@send
external createWritable: (
  FileTypes.fileSystemFileHandle,
  ~options: FileTypes.fileSystemCreateWritableOptions=?,
) => promise<FileTypes.fileSystemWritableFileStream> = "createWritable"
