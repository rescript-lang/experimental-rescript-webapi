include AudioNode.Impl({type t = WebAudioTypes.gainNode})

external asEventTarget: WebAudioTypes.gainNode => DOM.eventTarget = "%identity"
external asAudioNode: WebAudioTypes.gainNode => WebAudioTypes.audioNode = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GainNode)
*/
@new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.gainOptions=?,
) => WebAudioTypes.gainNode = "GainNode"
