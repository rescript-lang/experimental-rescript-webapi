/**
Serves as the root node for a given HTML document. This object inherits the properties and methods described in the HTMLElement interface.
[See HTMLHtmlElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLHtmlElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})
