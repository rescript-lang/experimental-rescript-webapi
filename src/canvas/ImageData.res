/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData)
*/
@throws(JsExn) @new
external make: (~sw: int, ~sh: int, ~settings: DOM.imageDataSettings=?) => DOM.imageData =
  "ImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ImageData)
*/
@throws(JsExn) @new
external makeWithData: (
  ~data: Uint8ClampedArray.t,
  ~sw: int,
  ~sh: int=?,
  ~settings: DOM.imageDataSettings=?,
) => DOM.imageData = "ImageData"
