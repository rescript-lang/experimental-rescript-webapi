external asWritableStream: Types.fileSystemWritableFileStream => Types.writableStream<'w> =
  "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/abort)
*/
@send
external abort: (Types.fileSystemWritableFileStream, ~reason: JSON.t=?) => promise<unit> = "abort"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/close)
*/
@send
external close: Types.fileSystemWritableFileStream => promise<unit> = "close"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/getWriter)
*/
@send
external getWriter: Types.fileSystemWritableFileStream => Types.writableStreamDefaultWriter<'w> =
  "getWriter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
*/
@send
external write: (Types.fileSystemWritableFileStream, DataView.t) => promise<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
*/
@send
external write2: (Types.fileSystemWritableFileStream, ArrayBuffer.t) => promise<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
*/
@send
external write3: (Types.fileSystemWritableFileStream, Types.blob) => promise<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
*/
@send
external write4: (Types.fileSystemWritableFileStream, string) => promise<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
*/
@send
external write5: (Types.fileSystemWritableFileStream, Types.writeParams) => promise<unit> = "write"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/seek)
*/
@send
external seek: (Types.fileSystemWritableFileStream, int) => promise<unit> = "seek"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/truncate)
*/
@send
external truncate: (Types.fileSystemWritableFileStream, int) => promise<unit> = "truncate"
