type t = MutationObserverTypes.mutationObserver = private {
  ...MutationObserverTypes.mutationObserver,
}
type callback = MutationObserverTypes.mutationObserverCallback
type init = MutationObserverTypes.mutationObserverInit = private {
  ...MutationObserverTypes.mutationObserverInit,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver)
*/
@new
external make: callback => t = "MutationObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/observe)
*/
@send
external observe: (
  t,
  ~target: Node.t,
  ~options: MutationObserverTypes.mutationObserverInit=?,
) => unit = "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/disconnect)
*/
@send
external disconnect: t => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/takeRecords)
*/
@send
external takeRecords: t => array<DOMTypes.mutationRecord> = "takeRecords"

module Types = MutationObserverTypes
