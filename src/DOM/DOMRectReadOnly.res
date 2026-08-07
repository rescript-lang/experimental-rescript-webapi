/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
*/
@new
external make: (
  ~x: float=?,
  ~y: float=?,
  ~width: float=?,
  ~height: float=?,
) => DOM.domRectReadOnly = "DOMRectReadOnly"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
*/
@scope("DOMRectReadOnly")
external fromRect: (~other: DOM.domRectInit=?) => DOM.domRectReadOnly = "fromRect"

@send
external toJSON: DOM.domRectReadOnly => Dict.t<string> = "toJSON"
