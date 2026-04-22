/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
type t<'r> = Types.readableStream<'r>

/**
`make()`

Creates a new empty `ReadableStream`.

```res
let stream: ReadableStream.t<string> = ReadableStream.make()
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
@new
external make: unit => t<'t> = "ReadableStream"

/**
`fromUnderlyingSource(underlyingSource<'t>)`

Creates a new `ReadableStream` from an `underlyingSource`.

```res
let stream = ReadableStream.fromUnderlyingSource(myUnderlyingSource)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ReadableStream)
*/
@new
external fromUnderlyingSource: Types.underlyingSource<'t> => t<'t> = "ReadableStream"

/**
`fromUnderlyingSourceWithStrategy(~underlyingSource: underlyingSource<'t>, ~strategy: queuingStrategy<'t>)`

Creates a new `ReadableStream` from an `underlyingSource` and `queuingStrategy`.

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
