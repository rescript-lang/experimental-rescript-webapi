open WebAudioTypes

type t = oscillatorNode = {...oscillatorNode}
type oscillatorOptions = WebAudioTypes.oscillatorOptions
type oscillatorType = WebAudioTypes.oscillatorType
type periodicWave = WebAudioTypes.periodicWave

include AudioScheduledSourceNode.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode)
*/
@new
external make: (~context: baseAudioContext, ~options: oscillatorOptions=?) => t = "OscillatorNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/setPeriodicWave)
*/
@send
external setPeriodicWave: (t, periodicWave) => unit = "setPeriodicWave"
