open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module DynamicsCompressorNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode)
    */
  @new
  external make: (baseAudioContext, dynamicsCompressorOptions) => dynamicsCompressorNode =
    "DynamicsCompressorNode"
}
