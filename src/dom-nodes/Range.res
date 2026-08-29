/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range)
*/
type t = private {
  ...AbstractRange.t,
  /**
    Returns the node, furthest away from the document, that is an ancestor of both range's start node and end node.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/commonAncestorContainer)
    */
  commonAncestorContainer: DOMTree.node,
}

@new
external make: unit => t = "Range"

external asAbstractRange: t => AbstractRange.t = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStart)
*/
@send
external setStart: (t, ~node: DOMTree.node, ~offset: int) => unit = "setStart"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEnd)
*/
@throws(JsExn) @send
external setEnd: (t, ~node: DOMTree.node, ~offset: int) => unit = "setEnd"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStartBefore)
*/
@send
external setStartBefore: (t, DOMTree.node) => unit = "setStartBefore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStartAfter)
*/
@send
external setStartAfter: (t, DOMTree.node) => unit = "setStartAfter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEndBefore)
*/
@send
external setEndBefore: (t, DOMTree.node) => unit = "setEndBefore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEndAfter)
*/
@send
external setEndAfter: (t, DOMTree.node) => unit = "setEndAfter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/collapse)
*/
@send
external collapse: (t, ~toStart: bool=?) => unit = "collapse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/selectNode)
*/
@send
external selectNode: (t, DOMTree.node) => unit = "selectNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/selectNodeContents)
*/
@send
external selectNodeContents: (t, DOMTree.node) => unit = "selectNodeContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/compareBoundaryPoints)
*/
@throws(JsExn) @send
external compareBoundaryPoints: (t, ~how: int, ~sourceRange: t) => int = "compareBoundaryPoints"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/deleteContents)
*/
@send
external deleteContents: t => unit = "deleteContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/extractContents)
*/
@send
external extractContents: t => DOMTree.documentFragment = "extractContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/cloneContents)
*/
@send
external cloneContents: t => DOMTree.documentFragment = "cloneContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/insertNode)
*/
@send
external insertNode: (t, DOMTree.node) => unit = "insertNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/surroundContents)
*/
@throws(JsExn) @send
external surroundContents: (t, DOMTree.node) => unit = "surroundContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/cloneRange)
*/
@send
external cloneRange: t => t = "cloneRange"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/detach)
*/
@send
external detach: t => unit = "detach"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/isPointInRange)
*/
@send
external isPointInRange: (t, ~node: DOMTree.node, ~offset: int) => bool = "isPointInRange"

/**
Returns −1 if the point is before the range, 0 if the point is in the range, and 1 if the point is after the range.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/comparePoint)
*/
@send
external comparePoint: (t, ~node: DOMTree.node, ~offset: int) => int = "comparePoint"

/**
Returns whether range intersects node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/intersectsNode)
*/
@send
external intersectsNode: (t, DOMTree.node) => bool = "intersectsNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/getClientRects)
*/
@send
external getClientRects: t => DOM.domRectList = "getClientRects"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/getBoundingClientRect)
*/
@send
external getBoundingClientRect: t => DOM.domRect = "getBoundingClientRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/createContextualFragment)
*/
@throws(JsExn) @send
external createContextualFragment: (t, string) => DOMTree.documentFragment =
  "createContextualFragment"
