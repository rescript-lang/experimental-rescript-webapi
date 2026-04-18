module Types = CanvasTypes

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas)
*/
@new
type t = Types.offscreenCanvas = {...Types.offscreenCanvas}
type imageBitmap = Types.imageBitmap = {...Types.imageBitmap}
type offscreenCanvasRenderingContext2D = Types.offscreenCanvasRenderingContext2D = {
  ...Types.offscreenCanvasRenderingContext2D,
}
type webGLRenderingContext = Types.webGLRenderingContext = {...Types.webGLRenderingContext}
type webGL2RenderingContext = Types.webGL2RenderingContext = {...Types.webGL2RenderingContext}
type webGLContextAttributes = Types.webGLContextAttributes = {...Types.webGLContextAttributes}
type imageBitmapRenderingContext = Types.imageBitmapRenderingContext = {
  ...Types.imageBitmapRenderingContext,
}
type imageBitmapRenderingContextSettings = Types.imageBitmapRenderingContextSettings = {
  ...Types.imageBitmapRenderingContextSettings,
}
type imageEncodeOptions = Types.imageEncodeOptions = {...Types.imageEncodeOptions}

external make: (~width: int, ~height: int) => t = "OffscreenCanvas"

include EventTarget.Impl({type t = t})

/**
Returns an object that exposes an API for drawing on the OffscreenCanvas object. contextId specifies the desired API: "2d", "bitmaprenderer", "webgl", or "webgl2". options is handled by that API.

This specification defines the "2d" context below, which is similar but distinct from the "2d" context that is created from a canvas element. The WebGL specifications define the "webgl" and "webgl2" contexts. [WEBGL]

Returns null if the canvas has already been initialized with another context type (e.g., trying to get a "2d" context after getting a "webgl" context).
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/getContext)
*/
@send
external getContext2D: (t, @as("2d") _, ~options: JSON.t=?) => offscreenCanvasRenderingContext2D =
  "getContext"

/**
Returns an object that exposes an API for drawing on the OffscreenCanvas object. contextId specifies the desired API: "2d", "bitmaprenderer", "webgl", or "webgl2". options is handled by that API.

This specification defines the "2d" context below, which is similar but distinct from the "2d" context that is created from a canvas element. The WebGL specifications define the "webgl" and "webgl2" contexts. [WEBGL]

Returns null if the canvas has already been initialized with another context type (e.g., trying to get a "2d" context after getting a "webgl" context).
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/getContext)
*/
@send
external getContextWebGL: (
  t,
  @as("webgl") _,
  ~options: webGLContextAttributes=?,
) => webGLRenderingContext = "getContext"

/**
Returns an object that exposes an API for drawing on the OffscreenCanvas object. contextId specifies the desired API: "2d", "bitmaprenderer", "webgl", or "webgl2". options is handled by that API.

This specification defines the "2d" context below, which is similar but distinct from the "2d" context that is created from a canvas element. The WebGL specifications define the "webgl" and "webgl2" contexts. [WEBGL]

Returns null if the canvas has already been initialized with another context type (e.g., trying to get a "2d" context after getting a "webgl" context).
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/getContext)
*/
@send
external getContextWebGL2: (
  t,
  @as("webgl2") _,
  ~options: webGLContextAttributes=?,
) => webGL2RenderingContext = "getContext"

/**
Returns an object that exposes an API for drawing on the OffscreenCanvas object. contextId specifies the desired API: "2d", "bitmaprenderer", "webgl", or "webgl2". options is handled by that API.

This specification defines the "2d" context below, which is similar but distinct from the "2d" context that is created from a canvas element. The WebGL specifications define the "webgl" and "webgl2" contexts. [WEBGL]

Returns null if the canvas has already been initialized with another context type (e.g., trying to get a "2d" context after getting a "webgl" context).
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/getContext)
*/
@send
external getContextBitmapRenderer: (
  t,
  @as("bitmaprenderer") _,
  ~options: imageBitmapRenderingContextSettings=?,
) => imageBitmapRenderingContext = "getContext"

/**
Returns a newly created ImageBitmap object with the image in the OffscreenCanvas object. The image in the OffscreenCanvas object is replaced with a new blank image.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/transferToImageBitmap)
*/
@send
external transferToImageBitmap: t => imageBitmap = "transferToImageBitmap"

/**
Returns a promise that will fulfill with a new Blob object representing a file containing the image in the OffscreenCanvas object.

The argument, if provided, is a dictionary that controls the encoding options of the image file to be created. The type field specifies the file format and has a default value of "image/png"; that type is also used if the requested type isn't supported. If the image format supports variable quality (such as "image/jpeg"), then the quality field is a number in the range 0.0 to 1.0 inclusive indicating the desired quality level for the resulting image.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas/convertToBlob)
*/
@send
external convertToBlob: (t, ~options: imageEncodeOptions=?) => promise<Blob.t> = "convertToBlob"
