open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module ChannelMergerNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ChannelMergerNode)
    */
  @new
  external make: (baseAudioContext, channelMergerOptions) => channelMergerNode = "ChannelMergerNode"
}
