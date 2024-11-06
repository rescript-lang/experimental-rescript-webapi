open WebAudioAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ChannelMergerNode)
*/
@new
external make: (baseAudioContext, channelMergerOptions) => channelMergerNode = "ChannelMergerNode"
