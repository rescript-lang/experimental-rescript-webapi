include WebApi.DOM.HTMLElement.Impl({type t = WebApi.DOM.Types.htmlCanvasElement})

/**
Returns an object that provides methods and properties for drawing and manipulating images and graphics on a canvas element in a document. A context object includes information about colors, line widths, fonts, and other graphic parameters that can be drawn on a canvas.
Creates a CanvasRenderingContext2D object representing a two-dimensional rendering context.

[Read more on MDN](https://developer.mozilla.org/en-US/docs/Web/API/HTMLCanvasElement/getContext#2d)
*/
@send
external getContext2D: (
  WebApi.DOM.Types.htmlCanvasElement,
  @as("2d") _,
  ~options: Types.canvasRenderingContext2DSettings=?,
) => WebApi.DOM.Types.canvasRenderingContext2D = "getContext"

/**
Returns an object that provides methods and properties for drawing and manipulating images and graphics on a canvas element in a document. A context object includes information about colors, line widths, fonts, and other graphic parameters that can be drawn on a canvas.
@param contextId The identifier (ID) of the type of canvas to create. Internet Explorer 9 and Internet Explorer 10 support only a 2-D context using canvas.getContext("2d"); IE11 Preview also supports 3-D or WebGL context using canvas.getContext("experimental-webgl");
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/getContext)
*/
@send
external getContextWebGL: (
  WebApi.DOM.Types.htmlCanvasElement,
  @as("webgl") _,
  ~options: Types.webGLContextAttributes=?,
) => Types.webGLRenderingContext = "getContext"

/**
Returns an object that provides methods and properties for drawing and manipulating images and graphics on a canvas element in a document. A context object includes information about colors, line widths, fonts, and other graphic parameters that can be drawn on a canvas.
@param contextId The identifier (ID) of the type of canvas to create. Internet Explorer 9 and Internet Explorer 10 support only a 2-D context using canvas.getContext("2d"); IE11 Preview also supports 3-D or WebGL context using canvas.getContext("experimental-webgl");
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/getContext)
*/
@send
external getContextWebGL2: (
  WebApi.DOM.Types.htmlCanvasElement,
  @as("webgl2") _,
  ~options: Types.webGLContextAttributes=?,
) => Types.webGL2RenderingContext = "getContext"

/**
Returns an object that provides methods and properties for drawing and manipulating images and graphics on a canvas element in a document. A context object includes information about colors, line widths, fonts, and other graphic parameters that can be drawn on a canvas.
@param contextId The identifier (ID) of the type of canvas to create. Internet Explorer 9 and Internet Explorer 10 support only a 2-D context using canvas.getContext("2d"); IE11 Preview also supports 3-D or WebGL context using canvas.getContext("experimental-webgl");
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/getContext)
*/
@send
external getContextBitmapRenderer: (
  WebApi.DOM.Types.htmlCanvasElement,
  @as("bitmaprenderer") _,
  ~options: Types.imageBitmapRenderingContextSettings=?,
) => Types.imageBitmapRenderingContext = "getContext"

/**
Returns the content of the current canvas as an image that you can use as a source for another canvas or an HTML element.
@param type The standard MIME type for the image format to return. If you do not specify this parameter, the default value is a PNG format image.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/toDataURL)
*/
@send
external toDataURL: (
  WebApi.DOM.Types.htmlCanvasElement,
  ~type_: string=?,
  ~quality: JSON.t=?,
) => string = "toDataURL"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/toBlob)
*/
@send
external toBlob: (
  WebApi.DOM.Types.htmlCanvasElement,
  ~callback: WebApi.File.Types.blob => unit,
  ~type_: string=?,
  ~quality: JSON.t=?,
) => unit = "toBlob"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/transferControlToOffscreen)
*/
@send
external transferControlToOffscreen: WebApi.DOM.Types.htmlCanvasElement => Types.offscreenCanvas =
  "transferControlToOffscreen"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/captureStream)
*/
@send
external captureStream: (
  WebApi.DOM.Types.htmlCanvasElement,
  ~frameRequestRate: float=?,
) => WebApi.MediaCaptureAndStreams.Types.mediaStream = "captureStream"
