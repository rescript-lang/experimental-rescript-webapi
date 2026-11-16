include AudioScheduledSourceNode.Impl({type t = WebAudioTypes.oscillatorNode})

external asEventTarget: WebAudioTypes.oscillatorNode => DOM.eventTarget = "%identity"
external asAudioNode: WebAudioTypes.oscillatorNode => WebAudioTypes.audioNode = "%identity"

external asAudioScheduledSourceNode: WebAudioTypes.oscillatorNode => WebAudioTypes.audioScheduledSourceNode =
  "%identity"

@set
external setType: (WebAudioTypes.oscillatorNode, WebAudioTypes.oscillatorType) => unit = "type"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode)
*/
@new
external make: (
  ~context: WebAudioTypes.baseAudioContext,
  ~options: WebAudioTypes.oscillatorOptions=?,
) => WebAudioTypes.oscillatorNode = "OscillatorNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/setPeriodicWave)
*/
@send
external setPeriodicWave: (WebAudioTypes.oscillatorNode, WebAudioTypes.periodicWave) => unit =
  "setPeriodicWave"
