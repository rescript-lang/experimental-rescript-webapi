include AudioNode.Impl({type t = WebAudioTypes.pannerNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode)
*/
@throws(JsExn) @new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.pannerOptions=?,
) => WebAudioTypes.pannerNode = "PannerNode"
