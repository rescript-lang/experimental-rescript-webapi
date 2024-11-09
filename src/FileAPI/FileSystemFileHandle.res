open FileAPI

external asFileSystemHandle: fileSystemFileHandle => fileSystemHandle = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
*/
@send
external isSameEntry: (fileSystemFileHandle, fileSystemHandle) => Promise.t<bool> = "isSameEntry"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle/getFile)
*/
@send
external getFile: fileSystemFileHandle => Promise.t<file> = "getFile"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle/createWritable)
*/
@send
external createWritable: (
  fileSystemFileHandle,
  ~options: fileSystemCreateWritableOptions=?,
) => Promise.t<fileSystemWritableFileStream> = "createWritable"
