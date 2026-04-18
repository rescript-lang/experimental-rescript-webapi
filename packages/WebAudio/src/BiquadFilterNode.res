include AudioNode.Impl({type t = Types.biquadFilterNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode)
*/
@new
external make: (~context: Types.baseAudioContext, ~options: Types.biquadFilterOptions=?) => Types.biquadFilterNode =
  "BiquadFilterNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/getFrequencyResponse)
*/
@send
external getFrequencyResponse: (
  Types.biquadFilterNode,
  ~frequencyHz: array<float>,
  ~magResponse: array<float>,
  ~phaseResponse: array<float>,
) => unit = "getFrequencyResponse"
