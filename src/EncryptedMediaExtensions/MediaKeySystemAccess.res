open Prelude
open Event
open EncryptedMediaExtensions

module MediaKeySystemAccess = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess/getConfiguration)
    */
  @send
  external getConfiguration: mediaKeySystemAccess => mediaKeySystemConfiguration =
    "getConfiguration"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess/createMediaKeys)
    */
  @send
  external createMediaKeys: mediaKeySystemAccess => Promise.t<mediaKeys> = "createMediaKeys"
}
