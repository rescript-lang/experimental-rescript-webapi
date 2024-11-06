@@warning("-44")
@@warning("-33")
open DOM

module HTMLImageElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement)
    */
  @new
  external make: unit => htmlImageElement = "HTMLImageElement"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/decode)
    */
  @send
  external decode: htmlImageElement => Promise.t<unit> = "decode"
}
