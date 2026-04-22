/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream)
*/
@new
external make: (
  ~underlyingSink: Types.underlyingSink<'w>=?,
  ~strategy: Types.queuingStrategy<'w>=?,
) => Types.writableStream<'w> = "WritableStream"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/abort)
*/
@send
external abort: (Types.writableStream<'w>, ~reason: JSON.t=?) => promise<unit> = "abort"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/close)
*/
@send
external close: Types.writableStream<'w> => promise<unit> = "close"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/getWriter)
*/
@send
external getWriter: Types.writableStream<'w> => Types.writableStreamDefaultWriter<'w> = "getWriter"
