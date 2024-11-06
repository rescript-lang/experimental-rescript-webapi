@@warning("-33")
open WebAudioAPI

module DelayNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/DelayNode)
    */
  @new
  external make: (baseAudioContext, delayOptions) => delayNode = "DelayNode"
}
