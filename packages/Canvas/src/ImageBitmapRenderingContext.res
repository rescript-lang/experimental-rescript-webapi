/**
Transfers the underlying bitmap data from imageBitmap to context, and the bitmap becomes the contents of the canvas element to which context is bound.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmapRenderingContext/transferFromImageBitmap)
*/
@send
external transferFromImageBitmap: (Types.imageBitmapRenderingContext, Types.imageBitmap) => unit =
  "transferFromImageBitmap"
