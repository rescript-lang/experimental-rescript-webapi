include AudioNode.Impl({type t = WebAudioTypes.pannerNode})

@set
external setPanningModel: (WebAudioTypes.pannerNode, WebAudioTypes.panningModelType) => unit =
  "panningModel"
@set
external setDistanceModel: (WebAudioTypes.pannerNode, WebAudioTypes.distanceModelType) => unit =
  "distanceModel"
@throws(JsExn) @set
external setRefDistance: (WebAudioTypes.pannerNode, float) => unit = "refDistance"
@throws(JsExn) @set
external setMaxDistance: (WebAudioTypes.pannerNode, float) => unit = "maxDistance"
@throws(JsExn) @set
external setRolloffFactor: (WebAudioTypes.pannerNode, float) => unit = "rolloffFactor"
@set
external setConeInnerAngle: (WebAudioTypes.pannerNode, float) => unit = "coneInnerAngle"
@set
external setConeOuterAngle: (WebAudioTypes.pannerNode, float) => unit = "coneOuterAngle"
@throws(JsExn) @set
external setConeOuterGain: (WebAudioTypes.pannerNode, float) => unit = "coneOuterGain"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/PannerNode)
*/
@throws(JsExn) @new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.pannerOptions=?,
) => WebAudioTypes.pannerNode = "PannerNode"
