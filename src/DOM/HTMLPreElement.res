/**
Exposes specific properties and methods (beyond those of the HTMLElement interface it also has available to it by inheritance) for manipulating a block of preformatted text (<pre>).
[See HTMLPreElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLPreElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})
