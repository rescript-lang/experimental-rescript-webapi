open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module ConstantSourceNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConstantSourceNode)
    */
  @new
  external make: (baseAudioContext, constantSourceOptions) => constantSourceNode =
    "ConstantSourceNode"
}
