include Event.Event.Impl({type t = Types.offlineAudioCompletionEvent})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OfflineAudioCompletionEvent)
*/
@new
external make: (
  ~type_: string,
  ~eventInitDict: Types.offlineAudioCompletionEventInit,
) => Types.offlineAudioCompletionEvent = "OfflineAudioCompletionEvent"
