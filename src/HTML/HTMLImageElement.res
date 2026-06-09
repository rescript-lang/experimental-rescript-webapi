type t = DOM.htmlImageElement = private {...DOM.htmlImageElement}

include HTMLElement.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/decode)
*/
@send
external decode: t => promise<unit> = "decode"
