@@warning("-30")

open Prelude
open Event
open File

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

module OffscreenCanvas = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas)
    */
  @new
  external make: (int, int) => offscreenCanvas = "OffscreenCanvas"
  /**
    Returns an object that exposes an API for drawing on the OffscreenCanvas object. contextId specifies the desired API: "2d", "bitmaprenderer", "webgl", or "webgl2". options is handled by that API.

This specification defines the "2d" context below, which is similar but distinct from the "2d" context that is created from a canvas element. The WebGL specifications define the "webgl" and "webgl2" contexts. [WEBGL]

Returns null if the canvas has already been initialized with another context type (e.g., trying to get a "2d" context after getting a "webgl" context).
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/getContext)
    */
  @send
  external getContext: (
    offscreenCanvas,
    offscreenRenderingContextId,
    any,
  ) => offscreenRenderingContext = "getContext"

  /**
    Returns a newly created ImageBitmap object with the image in the OffscreenCanvas object. The image in the OffscreenCanvas object is replaced with a new blank image.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/transferToImageBitmap)
    */
  @send
  external transferToImageBitmap: offscreenCanvas => imageBitmap = "transferToImageBitmap"

  /**
    Returns a promise that will fulfill with a new Blob object representing a file containing the image in the OffscreenCanvas object.

The argument, if provided, is a dictionary that controls the encoding options of the image file to be created. The type field specifies the file format and has a default value of "image/png"; that type is also used if the requested type isn't supported. If the image format supports variable quality (such as "image/jpeg"), then the quality field is a number in the range 0.0 to 1.0 inclusive indicating the desired quality level for the resulting image.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/convertToBlob)
    */
  @send
  external convertToBlob: (offscreenCanvas, imageEncodeOptions) => Promise.t<blob> = "convertToBlob"
}

module ImageBitmap = {
  /**
    Releases imageBitmap's underlying bitmap data.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmap/close)
    */
  @send
  external close: imageBitmap => unit = "close"
}
