include AudioScheduledSourceNode.Impl({type t = Types.oscillatorNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode)
*/
@new
external make: (~context: Types.baseAudioContext, ~options: Types.oscillatorOptions=?) => Types.oscillatorNode =
  "OscillatorNode"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/OscillatorNode/setPeriodicWave)
*/
@send
external setPeriodicWave: (Types.oscillatorNode, Types.periodicWave) => unit = "setPeriodicWave"
