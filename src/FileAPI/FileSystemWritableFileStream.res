open FileAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
*/
@send
external write: (fileSystemWritableFileStream, fileSystemWriteChunkType) => Promise.t<unit> =
  "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/seek)
*/
@send
external seek: (fileSystemWritableFileStream, int) => Promise.t<unit> = "seek"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/truncate)
*/
@send
external truncate: (fileSystemWritableFileStream, int) => Promise.t<unit> = "truncate"
