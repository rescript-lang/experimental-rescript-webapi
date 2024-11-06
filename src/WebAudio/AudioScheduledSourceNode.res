open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module AudioScheduledSourceNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode/start)
    */
  @send
  external start: (audioScheduledSourceNode, float) => unit = "start"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode/stop)
    */
  @send
  external stop: (audioScheduledSourceNode, float) => unit = "stop"
}
