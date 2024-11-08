open DOMAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
*/
@new
external make: (~x: float=?, ~y: float=?, ~width: float=?, ~height: float=?) => domRect = "DOMRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
*/
@scope("DOMRect")
external fromRect: (~other: domRectInit=?) => domRectReadOnly = "fromRect"

@send
external toJSON: domRect => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect/fromRect_static)
*/
@scope("DOMRect")
external fromRect: (~other: domRectInit=?) => domRect = "fromRect"
