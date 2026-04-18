include AudioNode.Impl({type t = Types.iirFilterNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IIRFilterNode)
*/
@new
external make: (~context: Types.baseAudioContext, ~options: Types.iirFilterOptions) => Types.iirFilterNode =
  "IIRFilterNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IIRFilterNode/getFrequencyResponse)
*/
@send
external getFrequencyResponse: (
  Types.iirFilterNode,
  ~frequencyHz: array<float>,
  ~magResponse: array<float>,
  ~phaseResponse: array<float>,
) => unit = "getFrequencyResponse"
