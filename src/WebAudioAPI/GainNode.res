open WebAudioTypes

type t = gainNode = {...gainNode}
type gainOptions = WebAudioTypes.gainOptions

include AudioNode.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GainNode)
*/
@new
external make: (~context: baseAudioContext, ~options: gainOptions=?) => t = "GainNode"
