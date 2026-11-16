include Event.Impl({type t = WebAudioTypes.audioProcessingEvent})

external asEvent: WebAudioTypes.audioProcessingEvent => DOM.event = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioProcessingEvent)
*/
@new
external make: (
  ~type_: string,
  ~eventInitDict: WebAudioTypes.audioProcessingEventInit,
) => WebAudioTypes.audioProcessingEvent = "AudioProcessingEvent"
