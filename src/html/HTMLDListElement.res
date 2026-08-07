/**
Provides special properties (beyond those of the regular HTMLElement interface it also has available to it by inheritance) for manipulating definition list (<dl>) elements.
[See HTMLDListElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDListElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})
