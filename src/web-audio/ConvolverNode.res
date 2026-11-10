include AudioNode.Impl({type t = WebAudioTypes.convolverNode})

@throws(JsExn) @set
external setBuffer: (WebAudioTypes.convolverNode, Null.t<WebAudioTypes.audioBuffer>) => unit =
  "buffer"
@set
external setNormalize: (WebAudioTypes.convolverNode, bool) => unit = "normalize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConvolverNode)
*/
@throws(JsExn) @new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.convolverOptions=?,
) => WebAudioTypes.convolverNode = "ConvolverNode"
