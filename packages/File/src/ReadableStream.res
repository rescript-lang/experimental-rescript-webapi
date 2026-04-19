/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
type t<'r> = Types.readableStream<'r>

/**
`make()`

The ReadableStream() constructor creates a new empty ReadableStream.

Source shape:
- no source input; this constructor creates a fresh MDN [ReadableStream](https://developer.mozilla.org/docs/Web/API/ReadableStream).

```res
let stream: ReadableStream.t<string> = ReadableStream.make()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
@new
external make: unit => t<'t> = "ReadableStream"

/**
`fromUnderlyingSource(~underlyingSource: underlyingSource<'t>)`

The ReadableStream() constructor creates a new ReadableStream from an underlying source definition.

Source shape:
- local [`underlyingSource<'t>`](../#underlyingSource) values accepted by MDN [ReadableStream()](https://developer.mozilla.org/docs/Web/API/ReadableStream/ReadableStream).

```res
let stream =
  ReadableStream.fromUnderlyingSource(~underlyingSource=myUnderlyingSource)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
@new
external fromUnderlyingSource: (~underlyingSource: Types.underlyingSource<'t>) => t<'t> =
  "ReadableStream"

/**
`fromUnderlyingSourceWithStrategy(~underlyingSource: underlyingSource<'t>, ~strategy: queuingStrategy<'t>)`

The ReadableStream() constructor creates a new ReadableStream from an underlying source definition and a queuing strategy.

Source shape:
- local [`underlyingSource<'t>`](../#underlyingSource) values accepted by MDN [ReadableStream()](https://developer.mozilla.org/docs/Web/API/ReadableStream/ReadableStream).
- local [`queuingStrategy<'t>`](../#queuingStrategy) values describing the stream queueing behavior.

```res
let stream =
  ReadableStream.fromUnderlyingSourceWithStrategy(
    ~underlyingSource=myUnderlyingSource,
    ~strategy=myQueuingStrategy,
  )
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
@new
external fromUnderlyingSourceWithStrategy: (
  ~underlyingSource: Types.underlyingSource<'t>,
  ~strategy: Types.queuingStrategy<'t>,
) => t<'t> = "ReadableStream"

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
