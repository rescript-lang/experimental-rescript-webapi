include AudioScheduledSourceNode.Impl({type t = Types.audioBufferSourceNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.audioBufferSourceOptions=?,
) => Types.audioBufferSourceNode = "AudioBufferSourceNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/start)
*/
@send
external startA: (
  Types.audioBufferSourceNode,
  ~when_: float=?,
  ~offset: float=?,
  ~duration: float=?,
) => unit = "start"
