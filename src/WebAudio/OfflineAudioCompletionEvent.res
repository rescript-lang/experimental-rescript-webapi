@@warning("-44")
@@warning("-33")
open WebAudio

module OfflineAudioCompletionEvent = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioCompletionEvent)
    */
  @new
  external make: (string, offlineAudioCompletionEventInit) => offlineAudioCompletionEvent =
    "OfflineAudioCompletionEvent"
}
