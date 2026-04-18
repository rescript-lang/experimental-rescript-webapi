module Impl = (
  T: {
    type t
  },
) => {
  include WebApiEvent.EventTarget.Impl({type t = T.t})

  external asAudioNode: T.t => Types.audioNode = "%identity"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
*/
  @send
  external connect: (
    T.t,
    ~destinationNode: Types.audioNode,
    ~output: int=?,
    ~input: int=?,
  ) => Types.audioNode = "connect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/connect)
*/
  @send
  external connect2: (T.t, ~destinationParam: Types.audioParam, ~output: int=?) => unit = "connect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnect: T.t => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnect2: (T.t, int) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnect3: (T.t, Types.audioNode) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnect4: (T.t, ~destinationNode: Types.audioNode, ~output: int) => unit =
    "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnect5: (
    T.t,
    ~destinationNode: Types.audioNode,
    ~output: int,
    ~input: int,
  ) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnect6: (T.t, Types.audioParam) => unit = "disconnect"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioNode/disconnect)
*/
  @send
  external disconnect7: (T.t, ~destinationParam: Types.audioParam, ~output: int) => unit =
    "disconnect"
}
