/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly)
*/
@new
external make: (~x: float=?, ~y: float=?, ~z: float=?, ~w: float=?) => DOM.domPointReadOnly =
  "DOMPointReadOnly"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/fromPoint_static)
*/
@scope("DOMPointReadOnly")
external fromPoint: (~other: DOM.domPointInit=?) => DOM.domPointReadOnly = "fromPoint"

@send
external matrixTransform: (DOM.domPointReadOnly, ~matrix: DOM.domMatrixInit=?) => DOM.domPoint =
  "matrixTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/toJSON)
*/
@send
external toJSON: DOM.domPointReadOnly => Dict.t<string> = "toJSON"
