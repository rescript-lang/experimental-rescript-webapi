@@warning("-44")
@@warning("-33")
open WebAudioAPI

module AudioBufferSourceNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode)
    */
  @new
  external make: (baseAudioContext, audioBufferSourceOptions) => audioBufferSourceNode =
    "AudioBufferSourceNode"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode/start)
    */
  @send
  external start: (audioBufferSourceNode, float, float, float) => unit = "start"
}
