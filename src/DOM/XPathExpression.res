/**
This interface is a compiled XPath expression that can be evaluated on a document or specific node to return information its WebApiDOM tree.
[See XPathExpression on MDN](https://developer.mozilla.org/docs/Web/API/XPathExpression)
*/
type t = private {}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathExpression/evaluate)
*/
@send
external evaluate: (
  t,
  ~contextNode: DOM.node,
  ~type_: int=?,
  ~result: XPathResult.t=?,
) => XPathResult.t = "evaluate"
