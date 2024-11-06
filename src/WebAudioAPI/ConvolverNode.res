open WebAudioAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ConvolverNode)
*/
@new
external make: (baseAudioContext, convolverOptions) => convolverNode = "ConvolverNode"
