include HTMLElement.Impl({type t = Types.htmlSlotElement})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assignedNodes)
*/
@send
external assignedNodes: (
  Types.htmlSlotElement,
  ~options: Types.assignedNodesOptions=?,
) => array<Types.node> = "assignedNodes"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assignedElements)
*/
@send
external assignedElements: (
  Types.htmlSlotElement,
  ~options: Types.assignedNodesOptions=?,
) => array<Types.element> = "assignedElements"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assign)
*/
@send
external assign: (Types.htmlSlotElement, Types.element) => unit = "assign"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/assign)
*/
@send
external assign2: (Types.htmlSlotElement, Types.text) => unit = "assign"
