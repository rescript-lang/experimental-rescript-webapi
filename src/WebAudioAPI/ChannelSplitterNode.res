@@warning("-44")
@@warning("-33")
open WebAudioAPI

module ChannelSplitterNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/ChannelSplitterNode)
    */
  @new
  external make: (baseAudioContext, channelSplitterOptions) => channelSplitterNode =
    "ChannelSplitterNode"
}
