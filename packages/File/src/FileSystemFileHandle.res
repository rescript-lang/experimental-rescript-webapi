external asFileSystemHandle: Types.fileSystemFileHandle => Types.fileSystemHandle = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
*/
@send
external isSameEntry: (Types.fileSystemFileHandle, Types.fileSystemHandle) => promise<bool> =
  "isSameEntry"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle/getFile)
*/
@send
external getFile: Types.fileSystemFileHandle => promise<Types.file> = "getFile"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle/createWritable)
*/
@send
external createWritable: (
  Types.fileSystemFileHandle,
  ~options: Types.fileSystemCreateWritableOptions=?,
) => promise<Types.fileSystemWritableFileStream> = "createWritable"
