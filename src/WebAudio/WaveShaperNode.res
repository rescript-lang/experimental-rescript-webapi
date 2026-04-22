include AudioNode.Impl({type t = Types.waveShaperNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WaveShaperNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.waveShaperOptions=?,
) => Types.waveShaperNode = "WaveShaperNode"
