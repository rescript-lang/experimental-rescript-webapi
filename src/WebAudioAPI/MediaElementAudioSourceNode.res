@@warning("-44")
@@warning("-33")
open WebAudioAPI

module MediaElementAudioSourceNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaElementAudioSourceNode)
    */
  @new
  external make: (audioContext, mediaElementAudioSourceOptions) => mediaElementAudioSourceNode =
    "MediaElementAudioSourceNode"
}
