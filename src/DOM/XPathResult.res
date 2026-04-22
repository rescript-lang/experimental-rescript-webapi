/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/iterateNext)
*/
@send
external iterateNext: Types.xPathResult => Types.node = "iterateNext"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/snapshotItem)
*/
@send
external snapshotItem: (Types.xPathResult, int) => Types.node = "snapshotItem"
