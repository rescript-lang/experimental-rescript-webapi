include AudioNode.Impl({type t = WebAudioTypes.audioWorkletNode})

external asEventTarget: WebAudioTypes.audioWorkletNode => DOM.eventTarget = "%identity"
external asAudioNode: WebAudioTypes.audioWorkletNode => WebAudioTypes.audioNode = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode)
*/
@throws(JsExn) @new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~name: string,
  ~options: WebAudioTypes.audioWorkletNodeOptions=?,
) => WebAudioTypes.audioWorkletNode = "AudioWorkletNode"
