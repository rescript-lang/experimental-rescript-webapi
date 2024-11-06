@@warning("-33")
open WebAudioAPI

module AudioProcessingEvent = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioProcessingEvent)
    */
  @new
  external make: (string, audioProcessingEventInit) => audioProcessingEvent = "AudioProcessingEvent"
}
