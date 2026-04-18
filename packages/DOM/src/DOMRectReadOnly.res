/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
*/
@new
external make: (
  ~x: float=?,
  ~y: float=?,
  ~width: float=?,
  ~height: float=?,
) => Types.domRectReadOnly = "DOMRectReadOnly"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
*/
@scope("DOMRectReadOnly")
external fromRect: (~other: Types.domRectInit=?) => Types.domRectReadOnly = "fromRect"

@send
external toJSON: Types.domRectReadOnly => Dict.t<string> = "toJSON"
