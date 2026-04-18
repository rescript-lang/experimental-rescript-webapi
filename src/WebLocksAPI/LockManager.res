open WebLocksTypes

type t = WebLocksTypes.lockManager = {...WebLocksTypes.lockManager}

external current: t = "locks"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
*/
@send
external request: (t, ~name: string, ~callback: lockGrantedCallback) => promise<JSON.t> =
  "request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
*/
@send
external requestWithOptions: (
  t,
  ~name: string,
  ~options: lockOptions,
  ~callback: lockGrantedCallback,
) => promise<JSON.t> = "request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/query)
*/
@send
external query: t => promise<lockManagerSnapshot> = "query"
