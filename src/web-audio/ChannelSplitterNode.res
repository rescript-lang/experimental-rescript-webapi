include AudioNode.Impl({type t = WebAudioTypes.channelSplitterNode})

external asEventTarget: WebAudioTypes.channelSplitterNode => DOM.eventTarget = "%identity"
external asAudioNode: WebAudioTypes.channelSplitterNode => WebAudioTypes.audioNode = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ChannelSplitterNode)
*/
@new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.channelSplitterOptions=?,
) => WebAudioTypes.channelSplitterNode = "ChannelSplitterNode"
