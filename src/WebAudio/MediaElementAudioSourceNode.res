open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module MediaElementAudioSourceNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaElementAudioSourceNode)
    */
  @new
  external make: (audioContext, mediaElementAudioSourceOptions) => mediaElementAudioSourceNode =
    "MediaElementAudioSourceNode"
}
