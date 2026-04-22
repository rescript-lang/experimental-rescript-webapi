include AudioNode.Impl({type t = Types.stereoPannerNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StereoPannerNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.stereoPannerOptions=?,
) => Types.stereoPannerNode = "StereoPannerNode"
