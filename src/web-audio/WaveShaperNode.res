include AudioNode.Impl({type t = WebAudioTypes.waveShaperNode})

external asEventTarget: WebAudioTypes.waveShaperNode => DOM.eventTarget = "%identity"
external asAudioNode: WebAudioTypes.waveShaperNode => WebAudioTypes.audioNode = "%identity"

@throws(JsExn) @set
external setCurve: (WebAudioTypes.waveShaperNode, Null.t<Float32Array.t>) => unit = "curve"

@set
external setOversample: (WebAudioTypes.waveShaperNode, WebAudioTypes.overSampleType) => unit =
  "oversample"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WaveShaperNode)
*/
@new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.waveShaperOptions=?,
) => WebAudioTypes.waveShaperNode = "WaveShaperNode"
