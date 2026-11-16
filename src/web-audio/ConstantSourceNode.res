include AudioScheduledSourceNode.Impl({type t = WebAudioTypes.constantSourceNode})

external asEventTarget: WebAudioTypes.constantSourceNode => DOM.eventTarget = "%identity"
external asAudioNode: WebAudioTypes.constantSourceNode => WebAudioTypes.audioNode = "%identity"

external asAudioScheduledSourceNode: WebAudioTypes.constantSourceNode => WebAudioTypes.audioScheduledSourceNode =
  "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConstantSourceNode)
*/
@new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.constantSourceOptions=?,
) => WebAudioTypes.constantSourceNode = "ConstantSourceNode"
