/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob)
*/
type t = FileTypes.blob
type blobPart = FileTypes.blobPart
type blobPropertyBag = FileTypes.blobPropertyBag

/**
Creates a Blob part from a string without wrapping or copying the value.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/Blob)
*/
external blobPartFromString: string => blobPart = "%identity"
/**
Creates a Blob part from an existing native Blob.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/Blob)
*/
external blobPartFromBlob: t => blobPart = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/size)
*/
@get external size: t => int = "size"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/type)
*/
@get external type_: t => string = "type"

@new
external make: (~blobParts: array<blobPart>=?, ~options: blobPropertyBag=?) => t = "Blob"

module Impl = (
  T: {
    type t
  },
) => {
  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/slice)
*/
  @send
  external slice: (T.t, ~start: int=?, ~end: int=?, ~contentType: string=?) => t = "slice"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/stream)
*/
  @send
  external stream: T.t => ReadableStream.t<Uint8Array.t> = "stream"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/text)
*/
  @send
  external text: T.t => promise<string> = "text"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/arrayBuffer)
*/
  @send
  external arrayBuffer: T.t => promise<ArrayBuffer.t> = "arrayBuffer"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/bytes)
*/
  @send
  external bytes: T.t => promise<Uint8Array.t> = "bytes"
}

include Impl({type t = t})
