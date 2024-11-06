@@warning("-33")
open WebAudioAPI

module DynamicsCompressorNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode)
    */
  @new
  external make: (baseAudioContext, dynamicsCompressorOptions) => dynamicsCompressorNode =
    "DynamicsCompressorNode"
}
