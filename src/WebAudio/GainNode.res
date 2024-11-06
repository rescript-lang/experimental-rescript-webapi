open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module GainNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/GainNode)
    */
  @new
  external make: (baseAudioContext, gainOptions) => gainNode = "GainNode"
}
