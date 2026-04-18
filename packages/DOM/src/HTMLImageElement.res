include HTMLElement.Impl({type t = Types.htmlImageElement})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLImageElement/decode)
*/
@send
external decode: Types.htmlImageElement => promise<unit> = "decode"
