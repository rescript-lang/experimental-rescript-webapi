@@warning("-30")

open Event

/**
This Web Speech API interface is the controller interface for the speech service; this can be used to retrieve information about the synthesis voices available on the device, start and pause speech, and other commands besides.
[See SpeechSynthesis on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis)
*/
type speechSynthesis = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/pending)
    */
  pending: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/speaking)
    */
  speaking: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/paused)
    */
  paused: bool,
}

/**
This Web Speech API interface represents a voice that the system supports. Every SpeechSynthesisVoice has its own relative speech service including information about language, name and URI.
[See SpeechSynthesisVoice on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice)
*/
type speechSynthesisVoice = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice/voiceURI)
    */
  voiceURI: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice/name)
    */
  name: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice/lang)
    */
  lang: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice/localService)
    */
  localService: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice/default)
    */
  default: bool,
}

/**
This Web Speech API interface represents a speech request. It contains the content the speech service should read and information about how to read it (e.g. language, pitch and volume.)
[See SpeechSynthesisUtterance on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance)
*/
type speechSynthesisUtterance = {
  ...eventTarget,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/text)
    */
  mutable text: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/lang)
    */
  mutable lang: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/voice)
    */
  mutable voice: Null.t<speechSynthesisVoice>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/volume)
    */
  mutable volume: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/rate)
    */
  mutable rate: float,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance/pitch)
    */
  mutable pitch: float,
}

module SpeechSynthesis = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/speak)
    */
  @send
  external speak: (speechSynthesis, speechSynthesisUtterance) => unit = "speak"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/cancel)
    */
  @send
  external cancel: speechSynthesis => unit = "cancel"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/pause)
    */
  @send
  external pause: speechSynthesis => unit = "pause"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/resume)
    */
  @send
  external resume: speechSynthesis => unit = "resume"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis/getVoices)
    */
  @send
  external getVoices: speechSynthesis => array<speechSynthesisVoice> = "getVoices"
}

module SpeechSynthesisUtterance = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance)
    */
  @new
  external make: string => speechSynthesisUtterance = "SpeechSynthesisUtterance"
}
