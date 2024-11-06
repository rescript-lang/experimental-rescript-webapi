@@warning("-33")
open WebAudioAPI

module PannerNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode)
    */
  @new
  external make: (baseAudioContext, pannerOptions) => pannerNode = "PannerNode"
}
