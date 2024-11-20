open WebAudioAPI

module Impl = (
  T: {
    type t
  },
) => {
  include AudioNode.Impl({
    type t = audioScheduledSourceNode
  })

  external asAudioScheduledSourceNode: T.t => audioScheduledSourceNode = "%identity"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode/start)
*/
  @send
  external start: (T.t, ~when_: float=?) => unit = "start"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode/stop)
*/
  @send
  external stop: (T.t, ~when_: float=?) => unit = "stop"
}

include Impl({
  type t = audioScheduledSourceNode
})
