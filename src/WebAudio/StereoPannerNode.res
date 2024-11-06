@@warning("-44")
@@warning("-33")
open WebAudio

module StereoPannerNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StereoPannerNode)
    */
  @new
  external make: (baseAudioContext, stereoPannerOptions) => stereoPannerNode = "StereoPannerNode"
}
