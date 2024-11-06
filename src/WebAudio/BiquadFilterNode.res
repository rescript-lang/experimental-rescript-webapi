open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

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
