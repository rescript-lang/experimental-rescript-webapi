/**
The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
[See Navigator on MDN](https://developer.mozilla.org/docs/Web/API/Navigator)
*/
@editor.completeFrom(Navigator)
type t

/**
[See UserActivation on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation)
*/
type userActivation = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation/hasBeenActive)
    */
  hasBeenActive: bool,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/UserActivation/isActive)
    */
  isActive: bool,
}

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/userActivation)
    */
@scope("globalThis.navigator") @val
external userActivation: userActivation = "userActivation"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/maxTouchPoints)
    */
@scope("globalThis.navigator") @val
external maxTouchPoints: int = "maxTouchPoints"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/userAgent)
    */
@scope("globalThis.navigator") @val
external userAgent: string = "userAgent"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/language)
    */
@scope("globalThis.navigator") @val
external language: string = "language"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/languages)
    */
@scope("globalThis.navigator") @val
external languages: array<string> = "languages"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/onLine)
    */
@scope("globalThis.navigator") @val
external onLine: bool = "onLine"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/cookieEnabled)
    */
@scope("globalThis.navigator") @val
external cookieEnabled: bool = "cookieEnabled"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/pdfViewerEnabled)
    */
@scope("globalThis.navigator") @val
external pdfViewerEnabled: bool = "pdfViewerEnabled"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/hardwareConcurrency)
    */
@scope("globalThis.navigator") @val
external hardwareConcurrency: int = "hardwareConcurrency"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/webdriver)
    */
@scope("globalThis.navigator") @val
external webdriver: bool = "webdriver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@scope("globalThis.navigator")
external sendBeacon: (~url: string, ~data: FileTypes.readableStream<unit>=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@scope("globalThis.navigator")
external sendBeacon2: (~url: string, ~data: FileTypes.blob=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@scope("globalThis.navigator")
external sendBeacon3: (~url: string, ~data: DataView.t=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@scope("globalThis.navigator")
external sendBeacon4: (~url: string, ~data: ArrayBuffer.t=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@scope("globalThis.navigator")
external sendBeacon5: (~url: string, ~data: FetchTypes.formData=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@scope("globalThis.navigator")
external sendBeacon6: (~url: string, ~data: UrlTypes.urlSearchParams=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@scope("globalThis.navigator")
external sendBeacon7: (~url: string, ~data: string=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/getGamepads)
*/
@scope("globalThis.navigator")
external getGamepads: unit => array<GamepadTypes.gamepad> = "getGamepads"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMediaKeySystemAccess)
*/
@scope("globalThis.navigator")
external requestMediaKeySystemAccess: (
  ~keySystem: string,
  ~supportedConfigurations: array<BaseEncryptedMediaExtensions.mediaKeySystemConfiguration>,
) => promise<'mediaKeySystemAccess> = "requestMediaKeySystemAccess"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMIDIAccess)
*/
@scope("globalThis.navigator")
external requestMIDIAccess: (
  ~options: WebMidiTypes.midiOptions=?,
) => promise<WebMidiTypes.midiAccess> = "requestMIDIAccess"
