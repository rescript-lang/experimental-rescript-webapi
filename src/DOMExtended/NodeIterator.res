type t = DomTypes.nodeIterator = private {...DomTypes.nodeIterator}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/nextNode)
*/
@send
external nextNode: t => Node.t = "nextNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/NodeIterator/previousNode)
*/
@send
external previousNode: t => Node.t = "previousNode"
