include AudioNode.Impl({type t = Types.channelSplitterNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ChannelSplitterNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.channelSplitterOptions=?,
) => Types.channelSplitterNode = "ChannelSplitterNode"
