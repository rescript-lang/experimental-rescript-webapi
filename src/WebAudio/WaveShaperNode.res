@@warning("-44")
@@warning("-33")
open WebAudio

module WaveShaperNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/WaveShaperNode)
    */
  @new
  external make: (baseAudioContext, waveShaperOptions) => waveShaperNode = "WaveShaperNode"
}
