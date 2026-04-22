/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external make: (
  ~family: string,
  ~source: string,
  ~descriptors: CssFontLoadingTypes.fontFaceDescriptors=?,
) => CssFontLoadingTypes.fontFace = "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external make2: (
  ~family: string,
  ~source: DataView.t,
  ~descriptors: CssFontLoadingTypes.fontFaceDescriptors=?,
) => CssFontLoadingTypes.fontFace = "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
*/
@new
external make3: (
  ~family: string,
  ~source: ArrayBuffer.t,
  ~descriptors: CssFontLoadingTypes.fontFaceDescriptors=?,
) => CssFontLoadingTypes.fontFace = "FontFace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/load)
*/
@send
external load: CssFontLoadingTypes.fontFace => promise<CssFontLoadingTypes.fontFace> = "load"
