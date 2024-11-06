@@warning("-44")
@@warning("-33")
open WebAudio

module ConvolverNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConvolverNode)
    */
  @new
  external make: (baseAudioContext, convolverOptions) => convolverNode = "ConvolverNode"
}
