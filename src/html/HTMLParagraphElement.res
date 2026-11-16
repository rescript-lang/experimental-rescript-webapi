/**
Provides special properties (beyond those of the regular HTMLElement object interface it inherits) for manipulating <p> elements.
[See HTMLParagraphElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLParagraphElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})

external asEventTarget: t => DOM.eventTarget = "%identity"
external asNode: t => DOMTree.node = "%identity"
external asElement: t => DOMTree.element = "%identity"
external asHTMLElement: t => DOMTree.htmlElement = "%identity"
