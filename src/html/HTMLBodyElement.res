/**
Provides special properties (beyond those inherited from the regular HTMLElement interface) for manipulating <body> elements.
[See HTMLBodyElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLBodyElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})

external asEventTarget: t => DOM.eventTarget = "%identity"
external asNode: t => DOMTree.node = "%identity"
external asElement: t => DOMTree.element = "%identity"
external asHTMLElement: t => DOMTree.htmlElement = "%identity"
