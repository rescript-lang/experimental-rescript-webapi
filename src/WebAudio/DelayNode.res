include AudioNode.Impl({type t = Types.delayNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/DelayNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.delayOptions=?,
) => Types.delayNode = "DelayNode"
