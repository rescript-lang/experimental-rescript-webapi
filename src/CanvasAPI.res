@@warning("-30")

open Prelude
open EventAPI
open FileAPI

type offscreenRenderingContextId =
  | @as("2d") V2d
  | @as("bitmaprenderer") Bitmaprenderer
  | @as("webgl") Webgl
  | @as("webgl2") Webgl2
  | @as("webgpu") Webgpu

/**
[See OffscreenCanvas on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas)
*/
type offscreenCanvas = {
  ...eventTarget,
  /**
    These attributes return the dimensions of the OffscreenCanvas object's bitmap.

They can be set, to replace the bitmap with a new, transparent black bitmap of the specified dimensions (effectively resizing it).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/width)
    */
  mutable width: int,
  /**
    These attributes return the dimensions of the OffscreenCanvas object's bitmap.

They can be set, to replace the bitmap with a new, transparent black bitmap of the specified dimensions (effectively resizing it).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/height)
    */
  mutable height: int,
}

/**
[See ImageBitmap on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmap)
*/
type imageBitmap = {
  /**
    Returns the intrinsic width of the image, in CSS pixels.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmap/width)
    */
  width: int,
  /**
    Returns the intrinsic height of the image, in CSS pixels.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmap/height)
    */
  height: int,
}

type offscreenRenderingContext = any

type imageEncodeOptions = {
  @as("type") mutable type_: string,
  mutable quality: any,
}
