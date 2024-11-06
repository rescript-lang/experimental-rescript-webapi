@@warning("-44")
@@warning("-33")
open DOM

module XPathExpression = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathExpression/evaluate)
    */
  @send
  external evaluate: (xPathExpression, node, int, xPathResult) => xPathResult = "evaluate"
}
