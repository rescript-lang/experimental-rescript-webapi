include AudioNode.Impl({type t = Types.mediaStreamAudioSourceNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioSourceNode)
*/
@new
external make: (
  ~context: Types.audioContext,
  ~options: Types.mediaStreamAudioSourceOptions,
) => Types.mediaStreamAudioSourceNode = "MediaStreamAudioSourceNode"
