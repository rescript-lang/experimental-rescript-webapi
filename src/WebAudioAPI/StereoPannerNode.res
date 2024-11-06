@@warning("-44")
@@warning("-33")
open WebAudioAPI

module StereoPannerNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StereoPannerNode)
    */
  @new
  external make: (baseAudioContext, stereoPannerOptions) => stereoPannerNode = "StereoPannerNode"
}
