include AudioNode.Impl({type t = Types.dynamicsCompressorNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.dynamicsCompressorOptions=?,
) => Types.dynamicsCompressorNode = "DynamicsCompressorNode"
