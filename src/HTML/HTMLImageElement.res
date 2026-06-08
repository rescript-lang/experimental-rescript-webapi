type t = DOMTypes.htmlImageElement = private {...DOMTypes.htmlImageElement}

include HTMLElement.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/decode)
*/
@send
external decode: t => promise<unit> = "decode"
