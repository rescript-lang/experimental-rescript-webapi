type t = FileTypes.file

external asBlob: t => Blob.t = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/size)
*/
@get external size: t => int = "size"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/type)
*/
@get external type_: t => string = "type"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/File/name)
*/
@get external name: t => string = "name"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/File/lastModified)
*/
@get external lastModified: t => int = "lastModified"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/File/webkitRelativePath)
*/
@get external webkitRelativePath: t => string = "webkitRelativePath"

include Blob.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/File)
*/
@new
external make: (
  ~fileBits: array<FileTypes.blobPart>,
  ~fileName: string,
  ~options: FileTypes.filePropertyBag=?,
) => t = "File"

let isInstanceOf = (_: 't): bool =>
  %raw(`typeof globalThis.File === "function" && param instanceof globalThis.File`)

/**
Safely narrows a value to a native File instance in the current JavaScript realm.
*/
let classify = (value: 'value): option<t> =>
  if value->isInstanceOf {
    Some(Obj.magic(value))
  } else {
    None
  }
