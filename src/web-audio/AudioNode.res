type t = WebAudioTypes.audioNode = private {...WebAudioTypes.audioNode}

module Impl = (
  T: {
    type t
  },
) => {
  include EventTarget.Impl({type t = T.t})

  external asAudioNode: T.t => WebAudioTypes.audioNode = "%identity"

  /**
  Sets the AudioNode channel count. Values outside the node's supported range may throw.
  */
  @throws(JsExn) @set
  external setChannelCount: (T.t, int) => unit = "channelCount"

  /**
  Sets the AudioNode channel count mode.
  */
  @set
  external setChannelCountMode: (T.t, WebAudioTypes.channelCountMode) => unit = "channelCountMode"

  /**
  Sets the AudioNode channel interpretation.
  */
  @set
  external setChannelInterpretation: (T.t, WebAudioTypes.channelInterpretation) => unit =
    "channelInterpretation"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
*/
  @throws(JsExn) @send
  external connect: (
    T.t,
    ~destinationNode: WebAudioTypes.audioNode,
    ~output: int=?,
    ~input: int=?,
  ) => WebAudioTypes.audioNode = "connect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
*/
  @throws(JsExn) @send
  external connect2: (T.t, ~destinationParam: WebAudioTypes.audioParam, ~output: int=?) => unit =
    "connect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @throws(JsExn) @send
  external disconnect: T.t => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @throws(JsExn) @send
  external disconnect2: (T.t, int) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @throws(JsExn) @send
  external disconnect3: (T.t, WebAudioTypes.audioNode) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @throws(JsExn) @send
  external disconnect4: (T.t, ~destinationNode: WebAudioTypes.audioNode, ~output: int) => unit =
    "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @throws(JsExn) @send
  external disconnect5: (
    T.t,
    ~destinationNode: WebAudioTypes.audioNode,
    ~output: int,
    ~input: int,
  ) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @throws(JsExn) @send
  external disconnect6: (T.t, WebAudioTypes.audioParam) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @throws(JsExn) @send
  external disconnect7: (T.t, ~destinationParam: WebAudioTypes.audioParam, ~output: int) => unit =
    "disconnect"
}
