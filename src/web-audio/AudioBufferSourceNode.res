include AudioScheduledSourceNode.Impl({type t = WebAudioTypes.audioBufferSourceNode})

@throws(JsExn) @set
external setBuffer: (
  WebAudioTypes.audioBufferSourceNode,
  Null.t<WebAudioTypes.audioBuffer>,
) => unit = "buffer"
@set
external setLoop: (WebAudioTypes.audioBufferSourceNode, bool) => unit = "loop"
@set
external setLoopStart: (WebAudioTypes.audioBufferSourceNode, float) => unit = "loopStart"
@set
external setLoopEnd: (WebAudioTypes.audioBufferSourceNode, float) => unit = "loopEnd"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode)
*/
@new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.audioBufferSourceOptions=?,
) => WebAudioTypes.audioBufferSourceNode = "AudioBufferSourceNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/start)
*/
@throws(JsExn) @send
external startA: (
  WebAudioTypes.audioBufferSourceNode,
  ~when_: float=?,
  ~offset: float=?,
  ~duration: float=?,
) => unit = "start"
