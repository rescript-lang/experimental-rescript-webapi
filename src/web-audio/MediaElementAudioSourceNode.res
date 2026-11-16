include AudioNode.Impl({type t = WebAudioTypes.mediaElementAudioSourceNode})

external asEventTarget: WebAudioTypes.mediaElementAudioSourceNode => DOM.eventTarget = "%identity"

external asAudioNode: WebAudioTypes.mediaElementAudioSourceNode => WebAudioTypes.audioNode =
  "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaElementAudioSourceNode)
*/
@new
external make: (
  ~context: WebAudioTypes.audioContext,
  ~options: WebAudioTypes.mediaElementAudioSourceOptions,
) => WebAudioTypes.mediaElementAudioSourceNode = "MediaElementAudioSourceNode"
