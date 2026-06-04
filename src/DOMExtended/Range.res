/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range)
*/
@new
external make: unit => DomTypes.range = "Range"

external asAbstractRange: DomTypes.range => DomTypes.abstractRange = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStart)
*/
@send
external setStart: (DomTypes.range, ~node: Node.t, ~offset: int) => unit = "setStart"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEnd)
*/
@send
external setEnd: (DomTypes.range, ~node: Node.t, ~offset: int) => unit = "setEnd"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStartBefore)
*/
@send
external setStartBefore: (DomTypes.range, Node.t) => unit = "setStartBefore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setStartAfter)
*/
@send
external setStartAfter: (DomTypes.range, Node.t) => unit = "setStartAfter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEndBefore)
*/
@send
external setEndBefore: (DomTypes.range, Node.t) => unit = "setEndBefore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/setEndAfter)
*/
@send
external setEndAfter: (DomTypes.range, Node.t) => unit = "setEndAfter"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/collapse)
*/
@send
external collapse: (DomTypes.range, ~toStart: bool=?) => unit = "collapse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/selectNode)
*/
@send
external selectNode: (DomTypes.range, Node.t) => unit = "selectNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/selectNodeContents)
*/
@send
external selectNodeContents: (DomTypes.range, Node.t) => unit = "selectNodeContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/compareBoundaryPoints)
*/
@send
external compareBoundaryPoints: (DomTypes.range, ~how: int, ~sourceRange: DomTypes.range) => int =
  "compareBoundaryPoints"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/deleteContents)
*/
@send
external deleteContents: DomTypes.range => unit = "deleteContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/extractContents)
*/
@send
external extractContents: DomTypes.range => DomTypes.documentFragment = "extractContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/cloneContents)
*/
@send
external cloneContents: DomTypes.range => DomTypes.documentFragment = "cloneContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/insertNode)
*/
@send
external insertNode: (DomTypes.range, Node.t) => unit = "insertNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/surroundContents)
*/
@send
external surroundContents: (DomTypes.range, Node.t) => unit = "surroundContents"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/cloneRange)
*/
@send
external cloneRange: DomTypes.range => DomTypes.range = "cloneRange"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/detach)
*/
@send
external detach: DomTypes.range => unit = "detach"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/isPointInRange)
*/
@send
external isPointInRange: (DomTypes.range, ~node: Node.t, ~offset: int) => bool = "isPointInRange"

/**
Returns −1 if the point is before the range, 0 if the point is in the range, and 1 if the point is after the range.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/comparePoint)
*/
@send
external comparePoint: (DomTypes.range, ~node: Node.t, ~offset: int) => int = "comparePoint"

/**
Returns whether range intersects node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/intersectsNode)
*/
@send
external intersectsNode: (DomTypes.range, Node.t) => bool = "intersectsNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/getClientRects)
*/
@send
external getClientRects: DomTypes.range => DOMRectList.t = "getClientRects"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/getBoundingClientRect)
*/
@send
external getBoundingClientRect: DomTypes.range => DOMRect.t = "getBoundingClientRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Range/createContextualFragment)
*/
@send
external createContextualFragment: (DomTypes.range, string) => DomTypes.documentFragment =
  "createContextualFragment"
