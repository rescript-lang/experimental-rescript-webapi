/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace)
*/
@new
external make: (~init: DOM.videoColorSpaceInit=?) => DOM.videoColorSpace = "VideoColorSpace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/toJSON)
*/
@send
external toJSON: DOM.videoColorSpace => DOM.videoColorSpaceInit = "toJSON"
