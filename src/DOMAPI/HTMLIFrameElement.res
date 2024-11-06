@@warning("-44")
@@warning("-33")
open DOMAPI

module HTMLIFrameElement = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement)
    */
  @new
  external make: unit => htmliFrameElement = "HTMLIFrameElement"
  @send
  external getSVGDocument: htmliFrameElement => document = "getSVGDocument"
}
