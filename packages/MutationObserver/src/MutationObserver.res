/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiMutationObserver)
*/
@new
external make: Types.mutationObserverCallback => Types.mutationObserver = "WebApiMutationObserver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiMutationObserver/observe)
*/
@send
external observe: (
  Types.mutationObserver,
  ~target: WebApiDOM.Types.node,
  ~options: Types.mutationObserverInit=?,
) => unit = "observe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiMutationObserver/disconnect)
*/
@send
external disconnect: Types.mutationObserver => unit = "disconnect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/WebApiMutationObserver/takeRecords)
*/
@send
external takeRecords: Types.mutationObserver => array<WebApiPrelude.Types.mutationRecord> = "takeRecords"
