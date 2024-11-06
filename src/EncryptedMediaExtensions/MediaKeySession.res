open Prelude
open Event
open EncryptedMediaExtensions

module MediaKeySession = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/generateRequest)
    */
  @send
  external generateRequest: (mediaKeySession, string, bufferSource) => Promise.t<unit> =
    "generateRequest"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/load)
    */
  @send
  external load: (mediaKeySession, string) => Promise.t<bool> = "load"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/update)
    */
  @send
  external update: (mediaKeySession, bufferSource) => Promise.t<unit> = "update"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/close)
    */
  @send
  external close: mediaKeySession => Promise.t<unit> = "close"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/remove)
    */
  @send
  external remove: mediaKeySession => Promise.t<unit> = "remove"
}
