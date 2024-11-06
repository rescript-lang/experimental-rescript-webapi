@@warning("-44")
@@warning("-33")
open WebAudioAPI

module BiquadFilterNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode)
    */
  @new
  external make: (baseAudioContext, biquadFilterOptions) => biquadFilterNode = "BiquadFilterNode"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode/getFrequencyResponse)
    */
  @send
  external getFrequencyResponse: (
    biquadFilterNode,
    array<float>,
    array<float>,
    array<float>,
  ) => unit = "getFrequencyResponse"
}
