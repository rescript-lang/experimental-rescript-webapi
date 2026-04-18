module Types = CanvasTypes

type t = Types.imageBitmap = {...Types.imageBitmap}

/**
Releases imageBitmap's underlying bitmap data.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageBitmap/close)
*/
@send
external close: t => unit = "close"
