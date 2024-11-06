@@warning("-44")
@@warning("-33")
open FetchAPI
open FileAPI
open Prelude

module Response = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response)
    */
  @new
  external make: (bodyInit, responseInit) => response = "Response"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/arrayBuffer)
    */
  @send
  external arrayBuffer: response => Promise.t<ArrayBuffer.t> = "arrayBuffer"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/blob)
    */
  @send
  external blob: response => Promise.t<blob> = "blob"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/bytes)
    */
  @send
  external bytes: response => Promise.t<array<int>> = "bytes"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/formData)
    */
  @send
  external formData: response => Promise.t<formData> = "formData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/json_static)
    */
  @scope("Response")
  external json: (any, responseInit) => response = "json"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/text)
    */
  @send
  external text: response => Promise.t<string> = "text"

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
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Response/clone)
    */
  @send
  external clone: response => response = "clone"
}
