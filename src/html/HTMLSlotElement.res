/**
[See HTMLSlotElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement)
*/
type t = DOMTree.htmlSlotElement = private {
  ...DOMTree.htmlSlotElement,
}

include HTMLElement.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assignedNodes)
*/
@send
external assignedNodes: (t, ~options: DOM.assignedNodesOptions=?) => array<DOMTree.node> =
  "assignedNodes"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assignedElements)
*/
@send
external assignedElements: (t, ~options: DOM.assignedNodesOptions=?) => array<DOMTree.element> =
  "assignedElements"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assign)
*/
@throws(JsExn) @send
external assign: (t, DOMTree.element) => unit = "assign"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assign)
*/
@throws(JsExn) @send
external assign2: (t, Text.t) => unit = "assign"
