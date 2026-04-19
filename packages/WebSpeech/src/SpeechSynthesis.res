include WebApiEvent.EventTarget.Impl({type t = Types.speechSynthesis})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/speak)
*/
@send
external speak: (Types.speechSynthesis, Types.speechSynthesisUtterance) => unit = "speak"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/cancel)
*/
@send
external cancel: Types.speechSynthesis => unit = "cancel"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/pause)
*/
@send
external pause: Types.speechSynthesis => unit = "pause"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/resume)
*/
@send
external resume: Types.speechSynthesis => unit = "resume"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/getVoices)
*/
@send
external getVoices: Types.speechSynthesis => array<Types.speechSynthesisVoice> = "getVoices"
