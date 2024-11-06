open WebAudioAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioDestinationNode)
*/
@new
external make: (audioContext, audioNodeOptions) => mediaStreamAudioDestinationNode =
  "MediaStreamAudioDestinationNode"
