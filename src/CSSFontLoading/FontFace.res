open Event
open CSSFontLoading

module FontFace = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace)
    */
  @new
  external make: (string, unknown, fontFaceDescriptors) => fontFace = "FontFace"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFace/load)
    */
  @send
  external load: fontFace => Promise.t<fontFace> = "load"
}
