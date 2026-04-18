/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
*/
@send
external request: (
  Types.lockManager,
  ~name: string,
  ~callback: Types.lockGrantedCallback,
) => promise<JSON.t> = "request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
*/
@send
external request2: (
  Types.lockManager,
  ~name: string,
  ~options: Types.lockOptions,
  ~callback: Types.lockGrantedCallback,
) => promise<JSON.t> = "request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/query)
*/
@send
external query: Types.lockManager => promise<Types.lockManagerSnapshot> = "query"
