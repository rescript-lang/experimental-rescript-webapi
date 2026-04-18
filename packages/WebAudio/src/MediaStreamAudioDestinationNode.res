include AudioNode.Impl({type t = Types.mediaStreamAudioDestinationNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioDestinationNode)
*/
@new
external make: (
  ~context: Types.audioContext,
  ~options: Types.audioNodeOptions=?,
) => Types.mediaStreamAudioDestinationNode = "MediaStreamAudioDestinationNode"
