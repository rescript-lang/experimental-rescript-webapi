/**
A <span> element and derives from the HTMLElement interface, but without implementing any additional properties or methods.
[See HTMLSpanElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSpanElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})
