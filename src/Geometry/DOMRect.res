/**
[See DOMRect on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
*/
@editor.completeFrom(DOMRect)
type t = GeometryTypes.domRect

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
*/
@new
external make: (~x: float=?, ~y: float=?, ~width: float=?, ~height: float=?) => t = "DOMRect"

external asDOMRectReadOnly: t => GeometryTypes.domRectReadOnly = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
*/
@scope("DOMRect")
external fromRect: (~other: GeometryTypes.domRectInit=?) => GeometryTypes.domRectReadOnly =
  "fromRect"

@send
external toJSON: t => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect/fromRect_static)
*/
@scope("DOMRect")
external fromRectD: (~other: GeometryTypes.domRectInit=?) => t = "fromRect"
