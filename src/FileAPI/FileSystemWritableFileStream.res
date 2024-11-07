open Prelude
open FileAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/abort)
*/
@send
external abort: (fileSystemWritableFileStream, any) => Promise.t<unit> = "abort"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/close)
*/
@send
external close: fileSystemWritableFileStream => Promise.t<unit> = "close"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/getWriter)
*/
@send
external getWriter: fileSystemWritableFileStream => writableStreamDefaultWriter<'w> = "getWriter"

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
