include AudioNode.Impl({type t = WebAudioTypes.audioWorkletNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode)
*/
@throws(JsExn) @new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~name: string,
  ~options: WebAudioTypes.audioWorkletNodeOptions=?,
) => WebAudioTypes.audioWorkletNode = "AudioWorkletNode"
