open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module ChannelSplitterNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ChannelSplitterNode)
    */
  @new
  external make: (baseAudioContext, channelSplitterOptions) => channelSplitterNode =
    "ChannelSplitterNode"
}
