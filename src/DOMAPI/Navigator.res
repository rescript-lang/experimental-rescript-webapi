@@warning("-33")
open DOMAPI
open Prelude
open EncryptedMediaExtensionsAPI
open GamepadAPI
open WebMIDIAPI

module Navigator = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/setAppBadge)
    */
  @send
  external setAppBadge: (navigator, int) => Promise.t<unit> = "setAppBadge"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/clearAppBadge)
    */
  @send
  external clearAppBadge: navigator => Promise.t<unit> = "clearAppBadge"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/registerProtocolHandler)
    */
  @send
  external registerProtocolHandler: (navigator, string, string) => unit = "registerProtocolHandler"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
    */
  @send
  external sendBeacon: (navigator, string, bodyInit) => bool = "sendBeacon"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMediaKeySystemAccess)
    */
  @send
  external requestMediaKeySystemAccess: (
    navigator,
    string,
    array<mediaKeySystemConfiguration>,
  ) => Promise.t<mediaKeySystemAccess> = "requestMediaKeySystemAccess"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/getGamepads)
    */
  @send
  external getGamepads: navigator => array<gamepad> = "getGamepads"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/vibrate)
    */
  @send
  external vibrate: (navigator, vibratePattern) => bool = "vibrate"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/share)
    */
  @send
  external share: (navigator, shareData) => Promise.t<unit> = "share"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/canShare)
    */
  @send
  external canShare: (navigator, shareData) => bool = "canShare"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMIDIAccess)
    */
  @send
  external requestMIDIAccess: (navigator, midiOptions) => Promise.t<midiAccess> =
    "requestMIDIAccess"
}
