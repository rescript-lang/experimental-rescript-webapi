/**
[See DOMRectReadOnly on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
*/
@editor.completeFrom(DOMRectReadOnly)
type t = GeometryTypes.domRectReadOnly

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
*/
@new
external make: (~x: float=?, ~y: float=?, ~width: float=?, ~height: float=?) => t =
  "DOMRectReadOnly"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
*/
@scope("DOMRectReadOnly")
external fromRect: (~other: GeometryTypes.domRectInit=?) => t = "fromRect"

@send
external toJSON: t => Dict.t<string> = "toJSON"
