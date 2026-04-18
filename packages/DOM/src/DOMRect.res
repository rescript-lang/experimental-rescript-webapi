/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
*/
@new
external make: (~x: float=?, ~y: float=?, ~width: float=?, ~height: float=?) => Types.domRect = "DOMRect"

external asDOMRectReadOnly: Types.domRect => Types.domRectReadOnly = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
*/
@scope("DOMRect")
external fromRect: (~other: Types.domRectInit=?) => Types.domRectReadOnly = "fromRect"

@send
external toJSON: Types.domRect => Dict.t<string> = "toJSON"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect/fromRect_static)
*/
@scope("DOMRect")
external fromRectD: (~other: Types.domRectInit=?) => Types.domRect = "fromRect"
