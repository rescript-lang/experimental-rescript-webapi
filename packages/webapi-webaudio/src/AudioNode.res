open WebAudio

module Impl = (
  T: {
    type t
  },
) => {
  include EventTarget.Impl({type t = T.t})

  external asAudioNode: T.t => audioNode = "%identity"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
*/
  @send
  external connect: (T.t, ~destinationNode: audioNode, ~output: int=?, ~input: int=?) => audioNode =
    "connect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
*/
  @send
  external connectParam: (T.t, ~destinationParam: audioParam, ~output: int=?) => unit = "connect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnect: T.t => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnectOutput: (T.t, int) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnectNode: (T.t, audioNode) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnectNodeOutput: (T.t, ~destinationNode: audioNode, ~output: int) => unit =
    "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnectNodeOutputInput: (
    T.t,
    ~destinationNode: audioNode,
    ~output: int,
    ~input: int,
  ) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnectParam: (T.t, audioParam) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnectParamOutput: (T.t, ~destinationParam: audioParam, ~output: int) => unit =
    "disconnect"
}
