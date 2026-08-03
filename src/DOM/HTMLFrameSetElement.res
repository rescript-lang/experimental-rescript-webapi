/**
Provides special properties (beyond those of the regular HTMLElement interface they also inherit) for manipulating <frameset> elements.
[See HTMLFrameSetElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLFrameSetElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})
