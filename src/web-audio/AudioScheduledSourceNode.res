module Impl = (
  T: {
    type t
  },
) => {
  include AudioNode.Impl({type t = T.t})

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode/start)
*/
  @throws(JsExn) @send
  external start: (T.t, ~when_: float=?) => unit = "start"

  /**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode/stop)
*/
  @throws(JsExn) @send
  external stop: (T.t, ~when_: float=?) => unit = "stop"
}

include Impl({type t = WebAudioTypes.audioScheduledSourceNode})

external asEventTarget: WebAudioTypes.audioScheduledSourceNode => DOM.eventTarget = "%identity"

external asAudioNode: WebAudioTypes.audioScheduledSourceNode => WebAudioTypes.audioNode =
  "%identity"

external asAudioScheduledSourceNode: WebAudioTypes.audioScheduledSourceNode => WebAudioTypes.audioScheduledSourceNode =
  "%identity"
