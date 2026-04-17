open CSSFontLoadingAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external make: (~family: string, ~source: string, ~descriptors: fontFaceDescriptors=?) => fontFace =
  "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external fromDataView: (
  ~family: string,
  ~source: DataView.t,
  ~descriptors: fontFaceDescriptors=?,
) => fontFace = "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external fromArrayBuffer: (
  ~family: string,
  ~source: ArrayBuffer.t,
  ~descriptors: fontFaceDescriptors=?,
) => fontFace = "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/load)
*/
@send
external load: fontFace => promise<fontFace> = "load"
