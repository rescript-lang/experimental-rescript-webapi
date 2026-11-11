type t = DOM.domException

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/name)
*/
@get
external name: t => string = "name"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException/message)
*/
@get
external message: t => string = "message"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DOMException)
*/
@new
external make: (~message: string=?, ~name: string=?) => t = "DOMException"
