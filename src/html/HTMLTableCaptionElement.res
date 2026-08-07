/**
Special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating table caption elements.
[See HTMLTableCaptionElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLTableCaptionElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})
