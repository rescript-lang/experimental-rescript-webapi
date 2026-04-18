/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiResizeObserver)
*/
@new
external make: Types.resizeObserverCallback => Types.resizeObserver = "WebApiResizeObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiResizeObserver/observe)
*/
@send
external observe: (
  Types.resizeObserver,
  ~target: WebApiDOM.Types.element,
  ~options: Types.resizeObserverOptions=?,
) => unit = "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiResizeObserver/unobserve)
*/
@send
external unobserve: (Types.resizeObserver, WebApiDOM.Types.element) => unit = "unobserve"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiResizeObserver/disconnect)
*/
@send
external disconnect: Types.resizeObserver => unit = "disconnect"
