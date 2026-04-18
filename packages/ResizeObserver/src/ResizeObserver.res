/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver)
*/
@new
external make: Types.resizeObserverCallback => Types.resizeObserver = "ResizeObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver/observe)
*/
@send
external observe: (
  Types.resizeObserver,
  ~target: DOM.Types.element,
  ~options: Types.resizeObserverOptions=?,
) => unit = "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver/unobserve)
*/
@send
external unobserve: (Types.resizeObserver, DOM.Types.element) => unit = "unobserve"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ResizeObserver/disconnect)
*/
@send
external disconnect: Types.resizeObserver => unit = "disconnect"
