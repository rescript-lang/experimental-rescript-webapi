/**
[See DOMPointReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly)
*/
@editor.completeFrom(DOMPointReadOnly)
type t = GeometryTypes.domPointReadOnly

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly)
*/
@new
external make: (~x: float=?, ~y: float=?, ~z: float=?, ~w: float=?) => t = "DOMPointReadOnly"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/fromPoint_static)
*/
@scope("DOMPointReadOnly")
external fromPoint: (~other: GeometryTypes.domPointInit=?) => t = "fromPoint"

@send
external matrixTransform: (t, ~matrix: GeometryTypes.domMatrixInit=?) => GeometryTypes.domPoint =
  "matrixTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/toJSON)
*/
@send
external toJSON: t => Dict.t<string> = "toJSON"
