open WebLocks

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
*/
@send
external request: (lockManager, ~name: string, ~callback: lockGrantedCallback) => promise<JSON.t> =
  "request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
*/
@send
external requestWithOptions: (
  lockManager,
  ~name: string,
  ~options: lockOptions,
  ~callback: lockGrantedCallback,
) => promise<JSON.t> = "request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/query)
*/
@send
external query: lockManager => promise<lockManagerSnapshot> = "query"
