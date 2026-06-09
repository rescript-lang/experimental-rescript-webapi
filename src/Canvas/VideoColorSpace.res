type t = DOM.videoColorSpace = private {...DOM.videoColorSpace}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace)
*/
@new
external make: (~init: DOM.videoColorSpaceInit=?) => t = "VideoColorSpace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/toJSON)
*/
@send
external toJSON: t => DOM.videoColorSpaceInit = "toJSON"
