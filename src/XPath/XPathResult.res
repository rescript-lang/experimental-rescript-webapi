type t = DomTypes.xPathResult = private {...DomTypes.xPathResult}

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
