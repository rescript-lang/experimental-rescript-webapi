/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathExpression/evaluate)
*/
@send
external evaluate: (
  Types.xPathExpression,
  ~contextNode: Types.node,
  ~type_: int=?,
  ~result: Types.xPathResult=?,
) => Types.xPathResult = "evaluate"
