include AudioNode.Impl({type t = Types.pannerNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.pannerOptions=?,
) => Types.pannerNode = "PannerNode"
