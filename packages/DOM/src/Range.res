/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range)
*/
@new
external make: unit => Types.range = "Range"

external asAbstractRange: Prelude.Types.range => Types.abstractRange = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStart)
*/
@send
external setStart: (Types.range, ~node: Types.node, ~offset: int) => unit = "setStart"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEnd)
*/
@send
external setEnd: (Types.range, ~node: Types.node, ~offset: int) => unit = "setEnd"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStartBefore)
*/
@send
external setStartBefore: (Types.range, Types.node) => unit = "setStartBefore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStartAfter)
*/
@send
external setStartAfter: (Types.range, Types.node) => unit = "setStartAfter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEndBefore)
*/
@send
external setEndBefore: (Types.range, Types.node) => unit = "setEndBefore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEndAfter)
*/
@send
external setEndAfter: (Types.range, Types.node) => unit = "setEndAfter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/collapse)
*/
@send
external collapse: (Types.range, ~toStart: bool=?) => unit = "collapse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/selectNode)
*/
@send
external selectNode: (Types.range, Types.node) => unit = "selectNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/selectNodeContents)
*/
@send
external selectNodeContents: (Types.range, Types.node) => unit = "selectNodeContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/compareBoundaryPoints)
*/
@send
external compareBoundaryPoints: (Types.range, ~how: int, ~sourceRange: Types.range) => int =
  "compareBoundaryPoints"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/deleteContents)
*/
@send
external deleteContents: Types.range => unit = "deleteContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/extractContents)
*/
@send
external extractContents: Types.range => Types.documentFragment = "extractContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/cloneContents)
*/
@send
external cloneContents: Types.range => Types.documentFragment = "cloneContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/insertNode)
*/
@send
external insertNode: (Types.range, Types.node) => unit = "insertNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/surroundContents)
*/
@send
external surroundContents: (Types.range, Types.node) => unit = "surroundContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/cloneRange)
*/
@send
external cloneRange: Types.range => Types.range = "cloneRange"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/detach)
*/
@send
external detach: Types.range => unit = "detach"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/isPointInRange)
*/
@send
external isPointInRange: (Types.range, ~node: Types.node, ~offset: int) => bool = "isPointInRange"

/**
Returns −1 if the point is before the range, 0 if the point is in the range, and 1 if the point is after the range.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/comparePoint)
*/
@send
external comparePoint: (Types.range, ~node: Types.node, ~offset: int) => int = "comparePoint"

/**
Returns whether range intersects node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/intersectsNode)
*/
@send
external intersectsNode: (Types.range, Types.node) => bool = "intersectsNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/getClientRects)
*/
@send
external getClientRects: Types.range => Types.domRectList = "getClientRects"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/getBoundingClientRect)
*/
@send
external getBoundingClientRect: Types.range => Types.domRect = "getBoundingClientRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/createContextualFragment)
*/
@send
external createContextualFragment: (Types.range, string) => Types.documentFragment =
  "createContextualFragment"
