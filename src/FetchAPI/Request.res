@@warning("-33")
open FetchAPI
open FileAPI
open Prelude
open ServiceWorkerAPI

module Request = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request)
    */
  @new
  external make: (requestInfo, requestInit) => request = "Request"
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/arrayBuffer)
    */
  @send
  external arrayBuffer: request => Promise.t<ArrayBuffer.t> = "arrayBuffer"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/blob)
    */
  @send
  external blob: request => Promise.t<blob> = "blob"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/bytes)
    */
  @send
  external bytes: request => Promise.t<array<int>> = "bytes"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/formData)
    */
  @send
  external formData: request => Promise.t<formData> = "formData"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/json)
    */
  @send
  external json: request => Promise.t<any> = "json"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/text)
    */
  @send
  external text: request => Promise.t<string> = "text"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Request/clone)
    */
  @send
  external clone: request => request = "clone"
}
