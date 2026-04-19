include AudioNode.Impl({type t = Types.analyserNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.analyserOptions=?,
) => Types.analyserNode = "AnalyserNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getFloatFrequencyData)
*/
@send
external getFloatFrequencyData: (Types.analyserNode, array<float>) => unit = "getFloatFrequencyData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getByteFrequencyData)
*/
@send
external getByteFrequencyData: (Types.analyserNode, array<int>) => unit = "getByteFrequencyData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getFloatTimeDomainData)
*/
@send
external getFloatTimeDomainData: (Types.analyserNode, array<float>) => unit =
  "getFloatTimeDomainData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AnalyserNode/getByteTimeDomainData)
*/
@send
external getByteTimeDomainData: (Types.analyserNode, array<int>) => unit = "getByteTimeDomainData"
