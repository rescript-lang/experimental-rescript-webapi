/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
*/
@new
external make: (~x: float=?, ~y: float=?, ~width: float=?, ~height: float=?) => DOM.domRect =
  "DOMRect"

external asDOMRectReadOnly: DOM.domRect => DOM.domRectReadOnly = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
*/
@scope("DOMRect")
external fromRect: (~other: DOM.domRectInit=?) => DOM.domRectReadOnly = "fromRect"

@send
external toJSON: DOM.domRect => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect/fromRect_static)
*/
@scope("DOMRect")
external fromRectD: (~other: DOM.domRectInit=?) => DOM.domRect = "fromRect"
