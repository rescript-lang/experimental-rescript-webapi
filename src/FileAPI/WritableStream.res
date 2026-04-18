module Types = FileTypes

type t<'w> = Types.writableStream<'w> = {...Types.writableStream<'w>}
type queuingStrategy<'t> = Types.queuingStrategy<'t>
type underlyingSink<'t> = Types.underlyingSink<'t>
type writableStreamDefaultWriter<'t> = Types.writableStreamDefaultWriter<'t>

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream)
*/
@new
external make: (
  ~underlyingSink: underlyingSink<'w>=?,
  ~strategy: queuingStrategy<'w>=?,
) => t<'w> = "WritableStream"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/abort)
*/
@send
external abort: (t<'w>, ~reason: JSON.t=?) => promise<unit> = "abort"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/close)
*/
@send
external close: t<'w> => promise<unit> = "close"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WritableStream/getWriter)
*/
@send
external getWriter: t<'w> => writableStreamDefaultWriter<'w> = "getWriter"
