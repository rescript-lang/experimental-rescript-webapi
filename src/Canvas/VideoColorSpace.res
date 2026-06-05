type t = DomTypes.videoColorSpace = private {...DomTypes.videoColorSpace}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace)
*/
@new
external make: (~init: DomTypes.videoColorSpaceInit=?) => t =
  "VideoColorSpace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoColorSpace/toJSON)
*/
@send
external toJSON: t => DomTypes.videoColorSpaceInit = "toJSON"
