include WebApiEvent.Event.Impl({type t = Types.audioProcessingEvent})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioProcessingEvent)
*/
@new
external make: (
  ~type_: string,
  ~eventInitDict: Types.audioProcessingEventInit,
) => Types.audioProcessingEvent = "AudioProcessingEvent"
