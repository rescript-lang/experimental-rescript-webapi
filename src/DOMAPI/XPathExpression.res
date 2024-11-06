open DOMAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/XPathExpression/evaluate)
*/
@send
external evaluate: (xPathExpression, node, int, xPathResult) => xPathResult = "evaluate"
