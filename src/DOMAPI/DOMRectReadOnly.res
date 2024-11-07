open DOMAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
*/
@new
external make: (float, float, float, float) => domRectReadOnly = "DOMRectReadOnly"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
*/
@scope("DOMRectReadOnly")
external fromRect: domRectInit => domRectReadOnly = "fromRect"

@send
external toJSON: domRectReadOnly => Dict.t<string> = "toJSON"
