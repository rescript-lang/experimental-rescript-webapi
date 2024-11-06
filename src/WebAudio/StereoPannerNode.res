open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module StereoPannerNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StereoPannerNode)
    */
  @new
  external make: (baseAudioContext, stereoPannerOptions) => stereoPannerNode = "StereoPannerNode"
}
