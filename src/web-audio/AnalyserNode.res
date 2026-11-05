include AudioNode.Impl({type t = WebAudioTypes.analyserNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode)
*/
@new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.analyserOptions=?,
) => WebAudioTypes.analyserNode = "AnalyserNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getFloatFrequencyData)
*/
@send
external getFloatFrequencyData: (WebAudioTypes.analyserNode, Float32Array.t) => unit =
  "getFloatFrequencyData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getByteFrequencyData)
*/
@send
external getByteFrequencyData: (WebAudioTypes.analyserNode, Uint8Array.t) => unit =
  "getByteFrequencyData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getFloatTimeDomainData)
*/
@send
external getFloatTimeDomainData: (WebAudioTypes.analyserNode, Float32Array.t) => unit =
  "getFloatTimeDomainData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getByteTimeDomainData)
*/
@send
external getByteTimeDomainData: (WebAudioTypes.analyserNode, Uint8Array.t) => unit =
  "getByteTimeDomainData"
