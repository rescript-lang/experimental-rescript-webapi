open DOMTypes
open MutationObserverTypes

type t = mutationObserver

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver)
*/
@new
external make: mutationObserverCallback => mutationObserver = "MutationObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/observe)
*/
@send
external observe: (mutationObserver, ~target: node, ~options: mutationObserverInit=?) => unit =
  "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/disconnect)
*/
@send
external disconnect: mutationObserver => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MutationObserver/takeRecords)
*/
@send
external takeRecords: mutationObserver => array<mutationRecord> = "takeRecords"
