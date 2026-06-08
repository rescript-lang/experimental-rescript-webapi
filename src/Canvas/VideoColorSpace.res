type t = DOMTypes.videoColorSpace = private {...DOMTypes.videoColorSpace}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace)
*/
@new
external make: (~init: DOMTypes.videoColorSpaceInit=?) => t = "VideoColorSpace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/toJSON)
*/
@send
external toJSON: t => DOMTypes.videoColorSpaceInit = "toJSON"
