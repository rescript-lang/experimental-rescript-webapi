type t = Types.file

include Blob.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiFile)
*/
@new
external make: (
  ~fileBits: array<Types.blobPart>,
  ~fileName: string,
  ~options: Types.filePropertyBag=?,
) => t = "WebApiFile"

let isInstanceOf = (_: 't): bool => %raw(`param instanceof WebApiFile`)
