/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver)
*/
@new
external make: Types.mutationObserverCallback => Types.mutationObserver = "MutationObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/observe)
*/
@send
external observe: (
  Types.mutationObserver,
  ~target: WebApi.DOM.Types.node,
  ~options: Types.mutationObserverInit=?,
) => unit = "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/disconnect)
*/
@send
external disconnect: Types.mutationObserver => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/takeRecords)
*/
@send
external takeRecords: Types.mutationObserver => array<WebApi.Base.DOM.mutationRecord> = "takeRecords"

module Types = MutationObserverTypes
