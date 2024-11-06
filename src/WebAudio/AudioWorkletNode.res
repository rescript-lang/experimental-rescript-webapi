@@warning("-44")
@@warning("-33")
open WebAudio

module AudioWorkletNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode)
    */
  @new
  external make: (baseAudioContext, string, audioWorkletNodeOptions) => audioWorkletNode =
    "AudioWorkletNode"
}
