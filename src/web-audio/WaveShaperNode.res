include AudioNode.Impl({type t = WebAudioTypes.waveShaperNode})

@set
external setCurve: (WebAudioTypes.waveShaperNode, Null.t<array<float>>) => unit = "curve"
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
