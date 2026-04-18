include Blob.Impl({type t = Types.file})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiFile)
*/
@new
external make: (
  ~fileBits: array<Types.blobPart>,
  ~fileName: string,
  ~options: Types.filePropertyBag=?,
) => Types.file = "WebApiFile"

let isInstanceOf = (_: 't): bool => %raw(`param instanceof WebApiFile`)
