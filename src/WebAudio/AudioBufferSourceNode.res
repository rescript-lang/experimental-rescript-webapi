open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module AudioBufferSourceNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode)
    */
  @new
  external make: (baseAudioContext, audioBufferSourceOptions) => audioBufferSourceNode =
    "AudioBufferSourceNode"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/start)
    */
  @send
  external start: (audioBufferSourceNode, float, float, float) => unit = "start"
}
