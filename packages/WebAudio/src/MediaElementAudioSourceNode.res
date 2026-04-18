include AudioNode.Impl({type t = Types.mediaElementAudioSourceNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaElementAudioSourceNode)
*/
@new
external make: (
  ~context: Types.audioContext,
  ~options: Types.mediaElementAudioSourceOptions,
) => Types.mediaElementAudioSourceNode = "MediaElementAudioSourceNode"
