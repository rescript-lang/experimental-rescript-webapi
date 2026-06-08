type t = Base__HTMLSlotElement.t

include HTMLElement.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assignedNodes)
*/
@send
external assignedNodes: (t, ~options: DOM.assignedNodesOptions=?) => array<Node.t> =
  "assignedNodes"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assignedElements)
*/
@send
external assignedElements: (t, ~options: DOM.assignedNodesOptions=?) => array<Element.t> =
  "assignedElements"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assign)
*/
@send
external assign: (t, Element.t) => unit = "assign"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assign)
*/
@send
external assign2: (t, DOM.text) => unit = "assign"
