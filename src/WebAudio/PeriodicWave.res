open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module PeriodicWave = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PeriodicWave)
    */
  @new
  external make: (baseAudioContext, periodicWaveOptions) => periodicWave = "PeriodicWave"
}
