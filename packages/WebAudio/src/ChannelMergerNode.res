include AudioNode.Impl({type t = Types.channelMergerNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ChannelMergerNode)
*/
@new
external make: (
  ~context: Types.baseAudioContext,
  ~options: Types.channelMergerOptions=?,
) => Types.channelMergerNode = "ChannelMergerNode"
