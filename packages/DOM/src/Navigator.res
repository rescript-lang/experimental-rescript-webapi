type t = Types.navigator

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/clipboard)
    */
@get external clipboard: t => WebApiClipboard.Types.clipboard = "clipboard"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/credentials)
    */
@get external credentials: t => WebApiCredentialManagement.Types.credentialsContainer =
  "credentials"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/geolocation)
    */
@get external geolocation: t => WebApiGeolocation.Types.geolocation = "geolocation"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/userActivation)
    */
@get external userActivation: t => Types.userActivation = "userActivation"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaCapabilities)
    */
@get external mediaCapabilities: t => WebApiMediaCapabilities.Types.mediaCapabilities =
  "mediaCapabilities"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaDevices)
    */
@get external mediaDevices: t => WebApiMediaCaptureAndStreams.Types.mediaDevices = "mediaDevices"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/mediaSession)
    */
@get external mediaSession: t => WebApiMediaSession.Types.mediaSession = "mediaSession"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/permissions)
    */
@get external permissions: t => WebApiPermissions.Types.permissions = "permissions"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/maxTouchPoints)
    */
@get external maxTouchPoints: t => int = "maxTouchPoints"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/wakeLock)
    */
@get external wakeLock: t => WebApiScreenWakeLock.Types.wakeLock = "wakeLock"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/serviceWorker)
    */
@get external serviceWorker: t => WebApiServiceWorker.Types.serviceWorkerContainer = "serviceWorker"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/userAgent)
    */
@get external userAgent: t => string = "userAgent"

/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/language)
    */
@get external language: t => string = "language"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/languages)
    */
@get external languages: t => array<string> = "languages"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/onLine)
    */
@get external onLine: t => bool = "onLine"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/cookieEnabled)
    */
@get external cookieEnabled: t => bool = "cookieEnabled"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/pdfViewerEnabled)
    */
@get external pdfViewerEnabled: t => bool = "pdfViewerEnabled"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/hardwareConcurrency)
    */
@get external hardwareConcurrency: t => int = "hardwareConcurrency"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/storage)
    */
@get external storage: t => WebApiStorage.Types.storageManager = "storage"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/locks)
    */
@get external locks: t => WebApiWebLocks.Types.lockManager = "locks"
/**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/webdriver)
    */
@get external webdriver: t => bool = "webdriver"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon: (t, ~url: string, ~data: WebApiFile.Types.readableStream<unit>=?) => bool =
  "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon2: (t, ~url: string, ~data: WebApiFile.Types.blob=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon3: (t, ~url: string, ~data: DataView.t=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon4: (t, ~url: string, ~data: ArrayBuffer.t=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon5: (t, ~url: string, ~data: WebApiFetch.Types.formData=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon6: (t, ~url: string, ~data: WebApiURL.Types.urlSearchParams=?) => bool =
  "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon7: (t, ~url: string, ~data: string=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/getGamepads)
*/
@send
external getGamepads: t => array<WebApiGamepad.Types.gamepad> = "getGamepads"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMediaKeySystemAccess)
*/
@send
external requestMediaKeySystemAccess: (
  t,
  ~keySystem: string,
  ~supportedConfigurations: array<Types.mediaKeySystemConfiguration>,
) => promise<'mediaKeySystemAccess> = "requestMediaKeySystemAccess"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMIDIAccess)
*/
@send
external requestMIDIAccess: (
  t,
  ~options: WebApiWebMIDI.Types.midiOptions=?,
) => promise<WebApiWebMIDI.Types.midiAccess> = "requestMIDIAccess"
