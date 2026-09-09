/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver)
*/
@throws(JsExn) @new
external make: (
  ~callback: IntersectionObserverTypes.intersectionObserverCallback,
  ~options: IntersectionObserverTypes.intersectionObserverInit=?,
) => IntersectionObserverTypes.intersectionObserver = "IntersectionObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/observe)
*/
@send
external observe: (IntersectionObserverTypes.intersectionObserver, DOMTree.element) => unit =
  "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/unobserve)
*/
@send
external unobserve: (IntersectionObserverTypes.intersectionObserver, DOMTree.element) => unit =
  "unobserve"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/disconnect)
*/
@send
external disconnect: IntersectionObserverTypes.intersectionObserver => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/takeRecords)
*/
@send
external takeRecords: IntersectionObserverTypes.intersectionObserver => array<
  IntersectionObserverTypes.intersectionObserverEntry,
> = "takeRecords"
