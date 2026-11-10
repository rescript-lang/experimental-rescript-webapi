include AudioNode.Impl({type t = WebAudioTypes.biquadFilterNode})

@set
external setType: (WebAudioTypes.biquadFilterNode, WebAudioTypes.biquadFilterType) => unit = "type"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode)
*/
@new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.biquadFilterOptions=?,
) => WebAudioTypes.biquadFilterNode = "BiquadFilterNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/getFrequencyResponse)
*/
@throws(JsExn) @send
external getFrequencyResponse: (
  WebAudioTypes.biquadFilterNode,
  ~frequencyHz: Float32Array.t,
  ~magResponse: Float32Array.t,
  ~phaseResponse: Float32Array.t,
) => unit = "getFrequencyResponse"
