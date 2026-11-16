include AudioNode.Impl({type t = WebAudioTypes.stereoPannerNode})

external asEventTarget: WebAudioTypes.stereoPannerNode => DOM.eventTarget = "%identity"
external asAudioNode: WebAudioTypes.stereoPannerNode => WebAudioTypes.audioNode = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StereoPannerNode)
*/
@new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.stereoPannerOptions=?,
) => WebAudioTypes.stereoPannerNode = "StereoPannerNode"
