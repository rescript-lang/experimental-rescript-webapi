/**
A Selection object represents the range of text selected by the user or the current position of the caret. To obtain a Selection object for examination or modification, call Window.getSelection().
[See Selection on MDN](https://developer.mozilla.org/docs/Web/API/Selection)
*/
type t = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/anchorNode)
    */
  anchorNode: Null.t<DOMTree.node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/anchorOffset)
    */
  anchorOffset: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/focusNode)
    */
  focusNode: Null.t<DOMTree.node>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/focusOffset)
    */
  focusOffset: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/isCollapsed)
    */
  isCollapsed: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/rangeCount)
    */
  rangeCount: int,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/direction)
    */
  direction: string,
}

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
external collapse: (t, ~node: DOMTree.node, ~offset: int=?) => unit = "collapse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/collapse)
*/
@send
external setPosition: (t, ~node: DOMTree.node, ~offset: int=?) => unit = "setPosition"

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
external extend: (t, ~node: DOMTree.node, ~offset: int=?) => unit = "extend"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/setBaseAndExtent)
*/
@throws(JsExn) @send
external setBaseAndExtent: (
  t,
  ~anchorNode: DOMTree.node,
  ~anchorOffset: int,
  ~focusNode: DOMTree.node,
  ~focusOffset: int,
) => unit = "setBaseAndExtent"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Selection/selectAllChildren)
*/
@send
external selectAllChildren: (t, DOMTree.node) => unit = "selectAllChildren"

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
external containsNode: (t, ~node: DOMTree.node, ~allowPartialContainment: bool=?) => bool =
  "containsNode"
