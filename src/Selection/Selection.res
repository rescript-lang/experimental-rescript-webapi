type t = DOMTypes.selection = private {...DOMTypes.selection}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/getRangeAt)
*/
@send
external getRangeAt: (t, int) => Range.t = "getRangeAt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/addRange)
*/
@send
external addRange: (t, Range.t) => unit = "addRange"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeRange)
*/
@send
external removeRange: (t, Range.t) => unit = "removeRange"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeAllRanges)
*/
@send
external removeAllRanges: t => unit = "removeAllRanges"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeAllRanges)
*/
@send
external empty: t => unit = "empty"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapse)
*/
@send
external collapse: (t, ~node: Node.t, ~offset: int=?) => unit = "collapse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapse)
*/
@send
external setPosition: (t, ~node: Node.t, ~offset: int=?) => unit = "setPosition"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapseToStart)
*/
@send
external collapseToStart: t => unit = "collapseToStart"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapseToEnd)
*/
@send
external collapseToEnd: t => unit = "collapseToEnd"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/extend)
*/
@send
external extend: (t, ~node: Node.t, ~offset: int=?) => unit = "extend"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/setBaseAndExtent)
*/
@send
external setBaseAndExtent: (
  t,
  ~anchorNode: Node.t,
  ~anchorOffset: int,
  ~focusNode: Node.t,
  ~focusOffset: int,
) => unit = "setBaseAndExtent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/selectAllChildren)
*/
@send
external selectAllChildren: (t, Node.t) => unit = "selectAllChildren"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/modify)
*/
@send
external modify: (t, ~alter: string=?, ~direction: string=?, ~granularity: string=?) => unit =
  "modify"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/deleteFromDocument)
*/
@send
external deleteFromDocument: t => unit = "deleteFromDocument"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/containsNode)
*/
@send
external containsNode: (t, ~node: Node.t, ~allowPartialContainment: bool=?) => bool = "containsNode"
