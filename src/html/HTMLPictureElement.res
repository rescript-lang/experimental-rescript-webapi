/**
A <picture> HTML element. It doesn't implement specific properties or methods.
[See HTMLPictureElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLPictureElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})
