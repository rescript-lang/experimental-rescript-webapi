include AudioNode.Impl({type t = Types.convolverNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConvolverNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.convolverOptions=?,
) => Types.convolverNode = "ConvolverNode"
