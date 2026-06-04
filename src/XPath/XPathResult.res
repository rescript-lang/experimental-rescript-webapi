/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/iterateNext)
*/
@send
external iterateNext: DomTypes.xPathResult => Node.t = "iterateNext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/snapshotItem)
*/
@send
external snapshotItem: (DomTypes.xPathResult, int) => Node.t = "snapshotItem"
