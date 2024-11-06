open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module MediaStreamAudioDestinationNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioDestinationNode)
    */
  @new
  external make: (audioContext, audioNodeOptions) => mediaStreamAudioDestinationNode =
    "MediaStreamAudioDestinationNode"
}
