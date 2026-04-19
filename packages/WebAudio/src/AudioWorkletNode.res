include AudioNode.Impl({type t = Types.audioWorkletNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~name: string,
  ~options: Types.audioWorkletNodeOptions=?,
) => Types.audioWorkletNode = "AudioWorkletNode"
