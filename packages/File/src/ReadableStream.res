/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
type t<'r> = Types.readableStream<'r>

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
  ~options: Types.readableStreamGetReaderOptions=?,
) => Types.readableStreamReader<'r> = "getReader"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/pipeThrough)
*/
@send
external pipeThrough: (
  t<'r>,
  ~transform: Types.readableWritablePair<'t, 'r>,
  ~options: Types.streamPipeOptions=?,
) => t<'t> = "pipeThrough"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/pipeTo)
*/
@send
external pipeTo: (
  t<'r>,
  ~destination: Types.writableStream<'r>,
  ~options: Types.streamPipeOptions=?,
) => promise<unit> = "pipeTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/tee)
*/
@send
external tee: t<'r> => array<t<unit>> = "tee"
