open Prelude
open Event
open File

module File = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/File)
    */
  @new
  external make: (array<blobPart>, string, filePropertyBag) => file = "File"
}
