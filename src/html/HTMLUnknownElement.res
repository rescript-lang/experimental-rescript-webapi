/**
An invalid HTML element and derives from the HTMLElement interface, but without implementing any additional properties or methods.
[See HTMLUnknownElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLUnknownElement)
*/
type t = {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})
