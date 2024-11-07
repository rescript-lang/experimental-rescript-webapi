open DOMAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint)
*/
@new
external make: (~x: float=?, ~y: float=?, ~z: float=?, ~w: float=?) => domPoint = "DOMPoint"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint/fromPoint_static)
*/
@scope("DOMPoint")
external fromPoint: (~other: domPointInit=?) => domPoint = "fromPoint"

@send
external matrixTransform: (domPoint, ~matrix: domMatrixInit=?) => domPoint = "matrixTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/toJSON)
*/
@send
external toJSON: domPoint => Dict.t<string> = "toJSON"
