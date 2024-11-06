open Prelude
open ChannelMessaging
open Event
open DOM
open MediaCaptureAndStreams
open WebAudio

module OfflineAudioCompletionEvent = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioCompletionEvent)
    */
  @new
  external make: (string, offlineAudioCompletionEventInit) => offlineAudioCompletionEvent =
    "OfflineAudioCompletionEvent"
}
