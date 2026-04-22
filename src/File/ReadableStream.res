/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
type t<'r> = FileTypes.readableStream<'r>

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
@new
external make: unit => t<array<int>> = "ReadableStream"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
@new
external make2: unit => unknown = "ReadableStream"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
@new
external make3: unit => unknown = "ReadableStream"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/cancel)
*/
@send
external cancel: (t<'r>, ~reason: JSON.t=?) => promise<unit> = "cancel"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/getReader)
*/
@send
external getReader: (
  t<'r>,
  ~options: FileTypes.readableStreamGetReaderOptions=?,
) => FileTypes.readableStreamReader<'r> = "getReader"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/pipeThrough)
*/
@send
external pipeThrough: (
  t<'r>,
  ~transform: FileTypes.readableWritablePair<'t, 'r>,
  ~options: FileTypes.streamPipeOptions=?,
) => t<'t> = "pipeThrough"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/pipeTo)
*/
@send
external pipeTo: (
  t<'r>,
  ~destination: FileTypes.writableStream<'r>,
  ~options: FileTypes.streamPipeOptions=?,
) => promise<unit> = "pipeTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/tee)
*/
@send
external tee: t<'r> => array<t<unit>> = "tee"
