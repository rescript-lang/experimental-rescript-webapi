/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
*/
@scope("globalThis.navigator.locks")
external request: (~name: string, ~callback: WebLocksTypes.lockGrantedCallback) => promise<JSON.t> =
  "request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
*/
@scope("globalThis.navigator.locks")
external request2: (
  ~name: string,
  ~options: WebLocksTypes.lockOptions,
  ~callback: WebLocksTypes.lockGrantedCallback,
) => promise<JSON.t> = "request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/query)
*/
@scope("globalThis.navigator.locks")
external query: unit => promise<WebLocksTypes.lockManagerSnapshot> = "query"
