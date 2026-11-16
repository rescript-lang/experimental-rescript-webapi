/**
Provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating <data> elements.
[See HTMLDataElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDataElement)
*/
type t = private {
  ...DOMTree.htmlElement,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLDataElement/value)
    */
  mutable value: string,
}

include HTMLElement.Impl({type t = t})

external asEventTarget: t => DOM.eventTarget = "%identity"
external asNode: t => DOMTree.node = "%identity"
external asElement: t => DOMTree.element = "%identity"
external asHTMLElement: t => DOMTree.htmlElement = "%identity"

@set
external setValue: (t, string) => unit = "value"
