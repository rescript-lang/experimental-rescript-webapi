open Prelude
open Event
open File
open Fetch

module Response = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
    */
  @new
  external make: (bodyInit, responseInit) => response = "Response"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/error_static)
    */
  @scope("Response")
  external error: unit => response = "error"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/redirect_static)
    */
  @scope("Response")
  external redirect: (string, int) => response = "redirect"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/json_static)
    */
  @scope("Response")
  external json: (any, responseInit) => response = "json"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/clone)
    */
  @send
  external clone: response => response = "clone"
}
