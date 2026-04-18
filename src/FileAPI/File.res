module Types = FileTypes

type t = Types.file
type blobPart = Types.blobPart
type filePropertyBag = Types.filePropertyBag

include Blob.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/File)
*/
@new
external make: (
  ~fileBits: array<blobPart>,
  ~fileName: string,
  ~options: filePropertyBag=?,
) => t = "File"

let isInstanceOf = (_: 't): bool => %raw(`param instanceof File`)
