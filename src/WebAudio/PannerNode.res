@@warning("-44")
@@warning("-33")
open WebAudio

module PannerNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode)
    */
  @new
  external make: (baseAudioContext, pannerOptions) => pannerNode = "PannerNode"
}
