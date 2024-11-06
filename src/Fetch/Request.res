open Prelude
open Event
open File
open Fetch

module Request = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request)
    */
  @new
  external make: (requestInfo, requestInit) => request = "Request"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/clone)
    */
  @send
  external clone: request => request = "clone"
}
