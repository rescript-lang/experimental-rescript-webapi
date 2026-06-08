type t = DOMTypes.xPathExpression = private {...DOMTypes.xPathExpression}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathExpression/evaluate)
*/
@send
external evaluate: (
  t,
  ~contextNode: Node.t,
  ~type_: int=?,
  ~result: XPathResult.t=?,
) => XPathResult.t = "evaluate"
