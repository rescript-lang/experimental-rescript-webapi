type t = IntersectionObserverTypes.intersectionObserver = private {
  ...IntersectionObserverTypes.intersectionObserver,
}
type callback = IntersectionObserverTypes.intersectionObserverCallback
type entry = IntersectionObserverTypes.intersectionObserverEntry = private {
  ...IntersectionObserverTypes.intersectionObserverEntry,
}
type init = IntersectionObserverTypes.intersectionObserverInit = private {
  ...IntersectionObserverTypes.intersectionObserverInit,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver)
*/
@new
external make: (
  ~callback: callback,
  ~options: IntersectionObserverTypes.intersectionObserverInit=?,
) => t = "IntersectionObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/observe)
*/
@send
external observe: (t, Element.t) => unit = "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/unobserve)
*/
@send
external unobserve: (t, Element.t) => unit = "unobserve"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/disconnect)
*/
@send
external disconnect: t => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/IntersectionObserver/takeRecords)
*/
@send
external takeRecords: t => array<entry> = "takeRecords"

module IntersectionObserverRoot = IntersectionObserverRoot
module Types = IntersectionObserverTypes
