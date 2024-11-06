open Prelude
open Event
open File
open Canvas

module ImageBitmap = {
  /**
    Releases imageBitmap's underlying bitmap data.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmap/close)
    */
  @send
  external close: imageBitmap => unit = "close"
}
