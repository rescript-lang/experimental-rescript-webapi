open Prelude
open FileAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/abort)
*/
@send
external abort: (fileSystemWritableFileStream, ~reason: JSON.t=?) => Promise.t<unit> = "abort"

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
external write: (fileSystemWritableFileStream, DataView.t) => Promise.t<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
*/
@send
external write2: (fileSystemWritableFileStream, ArrayBuffer.t) => Promise.t<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
*/
@send
external write3: (fileSystemWritableFileStream, blob) => Promise.t<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
*/
@send
external write4: (fileSystemWritableFileStream, string) => Promise.t<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
*/
@send
external write5: (fileSystemWritableFileStream, writeParams) => Promise.t<unit> = "write"

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
