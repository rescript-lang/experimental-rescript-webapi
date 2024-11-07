open CSSFontLoadingAPI
open Prelude

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external make: (~family: string, ~source: unknown, ~descriptors: fontFaceDescriptors) => fontFace =
  "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/load)
*/
@send
external load: fontFace => Promise.t<fontFace> = "load"
