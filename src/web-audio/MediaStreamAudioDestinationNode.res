include AudioNode.Impl({type t = WebAudioTypes.mediaStreamAudioDestinationNode})

external asEventTarget: WebAudioTypes.mediaStreamAudioDestinationNode => DOM.eventTarget =
  "%identity"

external asAudioNode: WebAudioTypes.mediaStreamAudioDestinationNode => WebAudioTypes.audioNode =
  "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioDestinationNode)
*/
@new
external make: (
  ~context: WebAudioTypes.audioContext,
  ~options: WebAudioTypes.audioNodeOptions=?,
) => WebAudioTypes.mediaStreamAudioDestinationNode = "MediaStreamAudioDestinationNode"
