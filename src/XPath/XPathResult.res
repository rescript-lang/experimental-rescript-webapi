type t = DOM.xPathResult = private {...DOM.xPathResult}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/iterateNext)
*/
@send
external iterateNext: t => Node.t = "iterateNext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/snapshotItem)
*/
@send
external snapshotItem: (t, int) => Node.t = "snapshotItem"
