/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/getRangeAt)
*/
@send
external getRangeAt: (Types.selection, int) => Types.range = "getRangeAt"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/addRange)
*/
@send
external addRange: (Types.selection, Types.range) => unit = "addRange"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeRange)
*/
@send
external removeRange: (Types.selection, Types.range) => unit = "removeRange"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeAllRanges)
*/
@send
external removeAllRanges: Types.selection => unit = "removeAllRanges"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/removeAllRanges)
*/
@send
external empty: Types.selection => unit = "empty"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapse)
*/
@send
external collapse: (Types.selection, ~node: Types.node, ~offset: int=?) => unit = "collapse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapse)
*/
@send
external setPosition: (Types.selection, ~node: Types.node, ~offset: int=?) => unit = "setPosition"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapseToStart)
*/
@send
external collapseToStart: Types.selection => unit = "collapseToStart"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapseToEnd)
*/
@send
external collapseToEnd: Types.selection => unit = "collapseToEnd"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/extend)
*/
@send
external extend: (Types.selection, ~node: Types.node, ~offset: int=?) => unit = "extend"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/setBaseAndExtent)
*/
@send
external setBaseAndExtent: (
  Types.selection,
  ~anchorNode: Types.node,
  ~anchorOffset: int,
  ~focusNode: Types.node,
  ~focusOffset: int,
) => unit = "setBaseAndExtent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/selectAllChildren)
*/
@send
external selectAllChildren: (Types.selection, Types.node) => unit = "selectAllChildren"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/modify)
*/
@send
external modify: (
  Types.selection,
  ~alter: string=?,
  ~direction: string=?,
  ~granularity: string=?,
) => unit = "modify"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/deleteFromDocument)
*/
@send
external deleteFromDocument: Types.selection => unit = "deleteFromDocument"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/containsNode)
*/
@send
external containsNode: (
  Types.selection,
  ~node: Types.node,
  ~allowPartialContainment: bool=?,
) => bool = "containsNode"
