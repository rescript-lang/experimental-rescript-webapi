@@warning("-44")
@@warning("-33")
open WebAudio

module OscillatorNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode)
    */
  @new
  external make: (baseAudioContext, oscillatorOptions) => oscillatorNode = "OscillatorNode"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/setPeriodicWave)
    */
  @send
  external setPeriodicWave: (oscillatorNode, periodicWave) => unit = "setPeriodicWave"
}
