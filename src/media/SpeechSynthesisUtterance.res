include EventTarget.Impl({type t = WebSpeechTypes.speechSynthesisUtterance})

external asEventTarget: WebSpeechTypes.speechSynthesisUtterance => DOM.eventTarget = "%identity"

@set external setText: (WebSpeechTypes.speechSynthesisUtterance, string) => unit = "text"
@set external setLang: (WebSpeechTypes.speechSynthesisUtterance, string) => unit = "lang"

@set
external setVoice: (
  WebSpeechTypes.speechSynthesisUtterance,
  Null.t<WebSpeechTypes.speechSynthesisVoice>,
) => unit = "voice"

@set external setVolume: (WebSpeechTypes.speechSynthesisUtterance, float) => unit = "volume"
@set external setRate: (WebSpeechTypes.speechSynthesisUtterance, float) => unit = "rate"
@set external setPitch: (WebSpeechTypes.speechSynthesisUtterance, float) => unit = "pitch"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance)
*/
@new
external make: (~text: string=?) => WebSpeechTypes.speechSynthesisUtterance =
  "SpeechSynthesisUtterance"
