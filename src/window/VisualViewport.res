type t = VisualViewportTypes.visualViewport = private {
  ...VisualViewportTypes.visualViewport,
}

include EventTarget.Impl({type t = t})

external asEventTarget: t => DOM.eventTarget = "%identity"
