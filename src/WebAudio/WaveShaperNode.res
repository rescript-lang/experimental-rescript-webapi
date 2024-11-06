open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module WaveShaperNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WaveShaperNode)
    */
  @new
  external make: (baseAudioContext, waveShaperOptions) => waveShaperNode = "WaveShaperNode"
}
