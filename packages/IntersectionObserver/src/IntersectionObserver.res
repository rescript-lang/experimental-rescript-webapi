/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiIntersectionObserver)
*/
@new
external make: (
  ~callback: Types.intersectionObserverCallback,
  ~options: Types.intersectionObserverInit=?,
) => Types.intersectionObserver = "WebApiIntersectionObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiIntersectionObserver/observe)
*/
@send
external observe: (Types.intersectionObserver, WebApiDOM.Types.element) => unit = "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiIntersectionObserver/unobserve)
*/
@send
external unobserve: (Types.intersectionObserver, WebApiDOM.Types.element) => unit = "unobserve"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiIntersectionObserver/disconnect)
*/
@send
external disconnect: Types.intersectionObserver => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiIntersectionObserver/takeRecords)
*/
@send
external takeRecords: Types.intersectionObserver => array<Types.intersectionObserverEntry> =
  "takeRecords"
