open DOMAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement)
*/
@new
external make: unit => htmlSlotElement = "HTMLSlotElement"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assignedNodes)
*/
@send
external assignedNodes: (htmlSlotElement, assignedNodesOptions) => array<node> = "assignedNodes"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assignedElements)
*/
@send
external assignedElements: (htmlSlotElement, assignedNodesOptions) => array<element> =
  "assignedElements"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assign)
*/
@send
external assign: (htmlSlotElement, unknown) => unit = "assign"
