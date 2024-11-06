open Prelude
open Event
open File

module ReadableStream = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
    */
  @new
  external make: unit => readableStream<array<int>> = "ReadableStream"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/cancel)
    */
  @send
  external cancel: (readableStream<'r>, any) => Promise.t<unit> = "cancel"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/getReader)
    */
  @send
  external getReader: (
    readableStream<'r>,
    readableStreamGetReaderOptions,
  ) => readableStreamReader<'r> = "getReader"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/pipeThrough)
    */
  @send
  external pipeThrough: (
    readableStream<'r>,
    readableWritablePair<'t, 'r>,
    streamPipeOptions,
  ) => readableStream<'t> = "pipeThrough"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/pipeTo)
    */
  @send
  external pipeTo: (readableStream<'r>, writableStream<'r>, streamPipeOptions) => Promise.t<unit> =
    "pipeTo"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream/tee)
    */
  @send
  external tee: readableStream<'r> => array<readableStream<unit>> = "tee"
}
