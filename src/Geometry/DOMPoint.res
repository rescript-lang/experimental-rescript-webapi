/**
[See DOMPoint on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint)
*/
@editor.completeFrom(DOMPoint)
type t = GeometryTypes.domPoint = private {...GeometryTypes.domPoint}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint)
*/
@new
external make: (~x: float=?, ~y: float=?, ~z: float=?, ~w: float=?) => t = "DOMPoint"

external asDOMPointReadOnly: t => GeometryTypes.domPointReadOnly = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/fromPoint_static)
*/
@scope("DOMPoint")
external fromPoint: (~other: GeometryTypes.domPointInit=?) => GeometryTypes.domPointReadOnly =
  "fromPoint"

@send
external matrixTransform: (t, ~matrix: GeometryTypes.domMatrixInit=?) => t = "matrixTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/toJSON)
*/
@send
external toJSON: t => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint/fromPoint_static)
*/
@scope("DOMPoint")
external fromPointD: (~other: GeometryTypes.domPointInit=?) => t = "fromPoint"
