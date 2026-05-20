include EventTarget.Impl({type t = WebSpeechTypes.speechSynthesis})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/speak)
*/
@scope("globalThis.speechSynthesis")
external speak: WebSpeechTypes.speechSynthesisUtterance => unit = "speak"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/cancel)
*/
@scope("globalThis.speechSynthesis")
external cancel: unit => unit = "cancel"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/pause)
*/
@scope("globalThis.speechSynthesis")
external pause: unit => unit = "pause"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/resume)
*/
@scope("globalThis.speechSynthesis")
external resume: unit => unit = "resume"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/getVoices)
*/
@scope("globalThis.speechSynthesis")
external getVoices: unit => array<WebSpeechTypes.speechSynthesisVoice> = "getVoices"
