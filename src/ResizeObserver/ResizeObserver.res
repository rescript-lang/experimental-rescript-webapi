type t = ResizeObserverTypes.resizeObserver = private {...ResizeObserverTypes.resizeObserver}
type callback = ResizeObserverTypes.resizeObserverCallback
type options = ResizeObserverTypes.resizeObserverOptions = private {
  ...ResizeObserverTypes.resizeObserverOptions,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver)
*/
@new
external make: callback => t =
  "ResizeObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver/observe)
*/
@send
external observe: (
  t,
  ~target: Element.t,
  ~options: ResizeObserverTypes.resizeObserverOptions=?,
) => unit = "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver/unobserve)
*/
@send
external unobserve: (t, Element.t) => unit = "unobserve"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver/disconnect)
*/
@send
external disconnect: t => unit = "disconnect"

module Types = ResizeObserverTypes
