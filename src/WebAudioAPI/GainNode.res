open WebAudioAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/GainNode)
*/
@new
external make: (baseAudioContext, gainOptions) => gainNode = "GainNode"
