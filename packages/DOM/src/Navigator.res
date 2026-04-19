/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon: (
  Types.navigator,
  ~url: string,
  ~data: WebApiFile.Types.readableStream<unit>=?,
) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon2: (Types.navigator, ~url: string, ~data: WebApiFile.Types.blob=?) => bool =
  "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon3: (Types.navigator, ~url: string, ~data: DataView.t=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon4: (Types.navigator, ~url: string, ~data: ArrayBuffer.t=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon5: (Types.navigator, ~url: string, ~data: WebApiFetch.Types.formData=?) => bool =
  "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon6: (
  Types.navigator,
  ~url: string,
  ~data: WebApiURL.Types.urlSearchParams=?,
) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon7: (Types.navigator, ~url: string, ~data: string=?) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/getGamepads)
*/
@send
external getGamepads: Types.navigator => array<WebApiGamepad.Types.gamepad> = "getGamepads"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/serviceWorker)
*/
@get
external serviceWorker: Types.navigator => WebApiServiceWorker.Types.serviceWorkerContainer =
  "serviceWorker"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMediaKeySystemAccess)
*/
@send
external requestMediaKeySystemAccess: (
  Types.navigator,
  ~keySystem: string,
  ~supportedConfigurations: array<Types.mediaKeySystemConfiguration>,
) => promise<'mediaKeySystemAccess> = "requestMediaKeySystemAccess"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMIDIAccess)
*/
@send
external requestMIDIAccess: (
  Types.navigator,
  ~options: WebApiWebMIDI.Types.midiOptions=?,
) => promise<WebApiWebMIDI.Types.midiAccess> = "requestMIDIAccess"
