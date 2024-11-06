@@warning("-44")
@@warning("-33")
open DOM

module XPathResult = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/iterateNext)
    */
  @send
  external iterateNext: xPathResult => node = "iterateNext"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathResult/snapshotItem)
    */
  @send
  external snapshotItem: (xPathResult, int) => node = "snapshotItem"
}
