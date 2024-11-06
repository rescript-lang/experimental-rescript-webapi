@@warning("-33")
open WebAudioAPI

module AudioNode = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
    */
  @send
  external connect: (audioNode, audioNode, int, int) => audioNode = "connect"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
    */
  @send
  external disconnect: audioNode => unit = "disconnect"
}
