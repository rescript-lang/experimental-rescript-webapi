/**
The different heading elements. It inherits methods and properties from the HTMLElement interface.
[See HTMLHeadingElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLHeadingElement)
*/
type t = private {
  ...DOMTree.htmlElement,
}

include HTMLElement.Impl({type t = t})

external asEventTarget: t => DOM.eventTarget = "%identity"
external asNode: t => DOMTree.node = "%identity"
external asElement: t => DOMTree.element = "%identity"
external asHTMLElement: t => DOMTree.htmlElement = "%identity"
