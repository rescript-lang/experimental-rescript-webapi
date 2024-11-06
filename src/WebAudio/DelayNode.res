open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module DelayNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DelayNode)
    */
  @new
  external make: (baseAudioContext, delayOptions) => delayNode = "DelayNode"
}
