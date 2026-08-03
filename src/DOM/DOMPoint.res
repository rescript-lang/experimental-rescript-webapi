/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint)
*/
@new
external make: (~x: float=?, ~y: float=?, ~z: float=?, ~w: float=?) => DOM.domPoint = "DOMPoint"

external asDOMPointReadOnly: DOM.domPoint => DOM.domPointReadOnly = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/fromPoint_static)
*/
@scope("DOMPoint")
external fromPoint: (~other: DOM.domPointInit=?) => DOM.domPointReadOnly = "fromPoint"

@send
external matrixTransform: (DOM.domPoint, ~matrix: DOM.domMatrixInit=?) => DOM.domPoint =
  "matrixTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/toJSON)
*/
@send
external toJSON: DOM.domPoint => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMPoint/fromPoint_static)
*/
@scope("DOMPoint")
external fromPointD: (~other: DOM.domPointInit=?) => DOM.domPoint = "fromPoint"
