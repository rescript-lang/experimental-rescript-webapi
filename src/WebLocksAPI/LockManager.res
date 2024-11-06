@@warning("-33")
open Prelude
open WebLocksAPI

module LockManager = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/request)
    */
  @send
  external request: (lockManager, string, lockGrantedCallback) => Promise.t<any> = "request"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/LockManager/query)
    */
  @send
  external query: lockManager => Promise.t<lockManagerSnapshot> = "query"
}
