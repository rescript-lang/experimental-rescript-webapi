@@warning("-33")
open DOMAPI
open Prelude
open CanvasAPI
open MediaCaptureAndStreamsAPI

module HTMLCanvasElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement)
    */
  @new
  external make: unit => htmlCanvasElement = "HTMLCanvasElement"
  /**
    Returns an object that provides methods and properties for drawing and manipulating images and graphics on a canvas element in a document. A context object includes information about colors, line widths, fonts, and other graphic parameters that can be drawn on a canvas.
@param contextId The identifier (ID) of the type of canvas to create. Internet Explorer 9 and Internet Explorer 10 support only a 2-D context using canvas.getContext("2d"); IE11 Preview also supports 3-D or WebGL context using canvas.getContext("experimental-webgl");
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/getContext)
    */
  @send
  external getContext: (htmlCanvasElement, string, any) => renderingContext = "getContext"

  /**
    Returns the content of the current canvas as an image that you can use as a source for another canvas or an HTML element.
@param type The standard MIME type for the image format to return. If you do not specify this parameter, the default value is a PNG format image.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/toDataURL)
    */
  @send
  external toDataURL: (htmlCanvasElement, string, any) => string = "toDataURL"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/toBlob)
    */
  @send
  external toBlob: (htmlCanvasElement, blobCallback, string, any) => unit = "toBlob"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/transferControlToOffscreen)
    */
  @send
  external transferControlToOffscreen: htmlCanvasElement => offscreenCanvas =
    "transferControlToOffscreen"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/captureStream)
    */
  @send
  external captureStream: (htmlCanvasElement, float) => mediaStream = "captureStream"
}
