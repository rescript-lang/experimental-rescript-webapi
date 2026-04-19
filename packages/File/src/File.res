type t = Types.file = private {...Types.file}

include Blob.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/File)
*/
@new
external make: (
  ~fileBits: array<Types.blobPart>,
  ~fileName: string,
  ~options: Types.filePropertyBag=?,
) => t = "File"

let isInstanceOf = (_: 't): bool => %raw(`param instanceof File`)
