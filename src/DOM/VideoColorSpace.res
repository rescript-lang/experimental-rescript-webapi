/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace)
*/
@new
external make: (~init: Types.videoColorSpaceInit=?) => Types.videoColorSpace = "VideoColorSpace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/toJSON)
*/
@send
external toJSON: Types.videoColorSpace => Types.videoColorSpaceInit = "toJSON"
