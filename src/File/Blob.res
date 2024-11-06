open Prelude
open Event
open File

module Blob = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob)
    */
  @new
  external make: (array<blobPart>, blobPropertyBag) => blob = "Blob"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/slice)
    */
  @send
  external slice: (blob, int, int, string) => blob = "slice"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/stream)
    */
  @send
  external stream: blob => readableStream<array<int>> = "stream"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/text)
    */
  @send
  external text: blob => Promise.t<string> = "text"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/arrayBuffer)
    */
  @send
  external arrayBuffer: blob => Promise.t<ArrayBuffer.t> = "arrayBuffer"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Blob/bytes)
    */
  @send
  external bytes: blob => Promise.t<array<int>> = "bytes"
}
