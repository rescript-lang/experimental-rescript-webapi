open DOMAPI
open Prelude
open EncryptedMediaExtensionsAPI
open GamepadAPI
open WebMIDIAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/setAppBadge)
*/
@send
external setAppBadge: (navigator, ~contents: int=?) => Promise.t<unit> = "setAppBadge"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/clearAppBadge)
*/
@send
external clearAppBadge: navigator => Promise.t<unit> = "clearAppBadge"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/registerProtocolHandler)
*/
@send
external registerProtocolHandler: (navigator, ~scheme: string, ~url: string) => unit =
  "registerProtocolHandler"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon: (navigator, ~url: string, ~data: bodyInit=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMediaKeySystemAccess)
*/
@send
external requestMediaKeySystemAccess: (
  navigator,
  ~keySystem: string,
  ~supportedConfigurations: array<mediaKeySystemConfiguration>,
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
external share: (navigator, ~data: shareData=?) => Promise.t<unit> = "share"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/canShare)
*/
@send
external canShare: (navigator, ~data: shareData=?) => bool = "canShare"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMIDIAccess)
*/
@send
external requestMIDIAccess: (navigator, ~options: midiOptions=?) => Promise.t<midiAccess> =
  "requestMIDIAccess"
