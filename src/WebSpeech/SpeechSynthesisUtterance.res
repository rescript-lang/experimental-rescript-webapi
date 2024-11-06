@@warning("-44")
@@warning("-33")
open WebSpeech

module SpeechSynthesisUtterance = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance)
    */
  @new
  external make: string => speechSynthesisUtterance = "SpeechSynthesisUtterance"
}
