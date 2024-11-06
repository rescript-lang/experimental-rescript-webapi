@@warning("-44")
@@warning("-33")
open DOM

module NodeIterator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/nextNode)
    */
  @send
  external nextNode: nodeIterator => node = "nextNode"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/previousNode)
    */
  @send
  external previousNode: nodeIterator => node = "previousNode"
}
