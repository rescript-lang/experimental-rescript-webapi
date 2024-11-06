@@warning("-44")
@@warning("-33")
open WebAudio

module ConstantSourceNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConstantSourceNode)
    */
  @new
  external make: (baseAudioContext, constantSourceOptions) => constantSourceNode =
    "ConstantSourceNode"
}
