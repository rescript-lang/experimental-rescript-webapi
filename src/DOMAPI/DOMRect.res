open DOMAPI
open Prelude

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect)
*/
@new
external make: (any, any, any, any) => domRect = "DOMRect"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRect/fromRect_static)
*/
@scope("DOMRect")
external fromRect: domRectInit => domRect = "fromRect"

@send
external toJSON: domRect => Dict.t<string> = "toJSON"
