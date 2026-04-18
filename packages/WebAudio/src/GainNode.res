include AudioNode.Impl({type t = Types.gainNode})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GainNode)
*/
@new
external make: (~context: Types.baseAudioContext, ~options: Types.gainOptions=?) => Types.gainNode = "GainNode"
