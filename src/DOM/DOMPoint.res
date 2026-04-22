/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint)
*/
@new
external make: (~x: float=?, ~y: float=?, ~z: float=?, ~w: float=?) => Types.domPoint = "DOMPoint"

external asDOMPointReadOnly: Types.domPoint => Types.domPointReadOnly = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/fromPoint_static)
*/
@scope("DOMPoint")
external fromPoint: (~other: Types.domPointInit=?) => Types.domPointReadOnly = "fromPoint"

@send
external matrixTransform: (Types.domPoint, ~matrix: Types.domMatrixInit=?) => Types.domPoint =
  "matrixTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/toJSON)
*/
@send
external toJSON: Types.domPoint => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint/fromPoint_static)
*/
@scope("DOMPoint")
external fromPointD: (~other: Types.domPointInit=?) => Types.domPoint = "fromPoint"
