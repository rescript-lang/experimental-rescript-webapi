include AudioNode.Impl({type t = WebAudioTypes.iirFilterNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IIRFilterNode)
*/
@new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.iirFilterOptions,
) => WebAudioTypes.iirFilterNode = "IIRFilterNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IIRFilterNode/getFrequencyResponse)
*/
@throws(JsExn) @send
external getFrequencyResponse: (
  WebAudioTypes.iirFilterNode,
  ~frequencyHz: Float32Array.t,
  ~magResponse: Float32Array.t,
  ~phaseResponse: Float32Array.t,
) => unit = "getFrequencyResponse"
