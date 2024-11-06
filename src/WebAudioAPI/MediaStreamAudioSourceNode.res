open WebAudioAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioSourceNode)
*/
@new
external make: (audioContext, mediaStreamAudioSourceOptions) => mediaStreamAudioSourceNode =
  "MediaStreamAudioSourceNode"
