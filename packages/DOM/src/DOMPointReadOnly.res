/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly)
*/
@new
external make: (~x: float=?, ~y: float=?, ~z: float=?, ~w: float=?) => Types.domPointReadOnly =
  "DOMPointReadOnly"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/fromPoint_static)
*/
@scope("DOMPointReadOnly")
external fromPoint: (~other: Types.domPointInit=?) => Types.domPointReadOnly = "fromPoint"

@send
external matrixTransform: (
  Types.domPointReadOnly,
  ~matrix: Types.domMatrixInit=?,
) => Types.domPoint = "matrixTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/toJSON)
*/
@send
external toJSON: Types.domPointReadOnly => Dict.t<string> = "toJSON"
