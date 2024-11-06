open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module IIRFilterNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IIRFilterNode)
    */
  @new
  external make: (baseAudioContext, iirFilterOptions) => iirFilterNode = "IIRFilterNode"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/IIRFilterNode/getFrequencyResponse)
    */
  @send
  external getFrequencyResponse: (iirFilterNode, array<float>, array<float>, array<float>) => unit =
    "getFrequencyResponse"
}
