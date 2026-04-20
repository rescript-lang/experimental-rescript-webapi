/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver)
*/
@new
external make: (
  ~callback: Types.intersectionObserverCallback,
  ~options: Types.intersectionObserverInit=?,
) => Types.intersectionObserver = "IntersectionObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/observe)
*/
@send
external observe: (Types.intersectionObserver, WebApiDOM.Types.element) => unit = "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/unobserve)
*/
@send
external unobserve: (Types.intersectionObserver, WebApiDOM.Types.element) => unit = "unobserve"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/disconnect)
*/
@send
external disconnect: Types.intersectionObserver => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/takeRecords)
*/
@send
external takeRecords: Types.intersectionObserver => array<Types.intersectionObserverEntry> =
  "takeRecords"
