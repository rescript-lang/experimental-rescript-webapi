open FileAPI

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
  fileSystemCreateWritableOptions,
) => Promise.t<fileSystemWritableFileStream> = "createWritable"