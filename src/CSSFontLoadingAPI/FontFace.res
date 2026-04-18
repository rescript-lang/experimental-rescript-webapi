module Types = CSSFontLoadingTypes

type t = Types.fontFace
type fontDisplay = Types.fontDisplay
type fontFaceLoadStatus = Types.fontFaceLoadStatus
type fontFaceDescriptors = Types.fontFaceDescriptors

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external make: (~family: string, ~source: string, ~descriptors: fontFaceDescriptors=?) => t =
  "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external make2: (
  ~family: string,
  ~source: DataView.t,
  ~descriptors: fontFaceDescriptors=?,
) => t = "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external make3: (
  ~family: string,
  ~source: ArrayBuffer.t,
  ~descriptors: fontFaceDescriptors=?,
) => t = "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/load)
*/
@send
external load: t => promise<t> = "load"
