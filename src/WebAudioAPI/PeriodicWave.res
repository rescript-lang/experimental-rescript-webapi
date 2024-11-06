@@warning("-33")
open WebAudioAPI

module PeriodicWave = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PeriodicWave)
    */
  @new
  external make: (baseAudioContext, periodicWaveOptions) => periodicWave = "PeriodicWave"
}
