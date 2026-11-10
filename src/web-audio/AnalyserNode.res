include AudioNode.Impl({type t = WebAudioTypes.analyserNode})

@throws(JsExn) @set
external setFftSize: (WebAudioTypes.analyserNode, int) => unit = "fftSize"
@throws(JsExn) @set
external setMinDecibels: (WebAudioTypes.analyserNode, float) => unit = "minDecibels"
@throws(JsExn) @set
external setMaxDecibels: (WebAudioTypes.analyserNode, float) => unit = "maxDecibels"
@throws(JsExn) @set
external setSmoothingTimeConstant: (WebAudioTypes.analyserNode, float) => unit =
  "smoothingTimeConstant"

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
