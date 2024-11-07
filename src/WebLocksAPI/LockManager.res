open Prelude
open WebLocksAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
*/
@send
external request: (lockManager, string, lockGrantedCallback) => Promise.t<any> = "request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
*/
@send
external request2: (lockManager, string, lockOptions, lockGrantedCallback) => Promise.t<any> =
  "request"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/query)
*/
@send
external query: lockManager => Promise.t<lockManagerSnapshot> = "query"
