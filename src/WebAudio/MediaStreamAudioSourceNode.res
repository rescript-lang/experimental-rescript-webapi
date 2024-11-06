open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module MediaStreamAudioSourceNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioSourceNode)
    */
  @new
  external make: (audioContext, mediaStreamAudioSourceOptions) => mediaStreamAudioSourceNode =
    "MediaStreamAudioSourceNode"
}
