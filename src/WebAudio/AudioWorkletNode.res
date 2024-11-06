open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module AudioWorkletNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode)
    */
  @new
  external make: (baseAudioContext, string, audioWorkletNodeOptions) => audioWorkletNode =
    "AudioWorkletNode"
}
