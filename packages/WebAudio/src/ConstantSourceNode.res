include AudioScheduledSourceNode.Impl({type t = Types.constantSourceNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConstantSourceNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.constantSourceOptions=?,
) => Types.constantSourceNode = "ConstantSourceNode"
