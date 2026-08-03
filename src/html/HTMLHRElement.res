/**
Provides special properties (beyond those of the HTMLElement interface it also has available to it by inheritance) for manipulating <hr> elements.
[See HTMLHRElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLHRElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})
