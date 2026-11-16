include AudioNode.Impl({type t = WebAudioTypes.channelMergerNode})

external asEventTarget: WebAudioTypes.channelMergerNode => DOM.eventTarget = "%identity"
external asAudioNode: WebAudioTypes.channelMergerNode => WebAudioTypes.audioNode = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ChannelMergerNode)
*/
@throws(JsExn) @new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.channelMergerOptions=?,
) => WebAudioTypes.channelMergerNode = "ChannelMergerNode"
