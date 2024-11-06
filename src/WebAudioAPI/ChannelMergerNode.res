@@warning("-44")
@@warning("-33")
open WebAudioAPI

module ChannelMergerNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ChannelMergerNode)
    */
  @new
  external make: (baseAudioContext, channelMergerOptions) => channelMergerNode = "ChannelMergerNode"
}
