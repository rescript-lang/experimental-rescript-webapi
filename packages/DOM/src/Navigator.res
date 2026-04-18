/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon: (
  Prelude.Types.navigator,
  ~url: string,
  ~data: File.Types.readableStream<unit>=?,
) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon2: (Prelude.Types.navigator, ~url: string, ~data: File.Types.blob=?) => bool =
  "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon3: (Prelude.Types.navigator, ~url: string, ~data: DataView.t=?) => bool =
  "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon4: (Prelude.Types.navigator, ~url: string, ~data: ArrayBuffer.t=?) => bool =
  "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon5: (
  Prelude.Types.navigator,
  ~url: string,
  ~data: Fetch.Types.formData=?,
) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon6: (
  Prelude.Types.navigator,
  ~url: string,
  ~data: URL.Types.urlSearchParams=?,
) => bool = "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon)
*/
@send
external sendBeacon7: (Prelude.Types.navigator, ~url: string, ~data: string=?) => bool =
  "sendBeacon"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/getGamepads)
*/
@send
external getGamepads: Prelude.Types.navigator => array<Gamepad.Types.gamepad> = "getGamepads"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/serviceWorker)
*/
@get
external serviceWorker: Prelude.Types.navigator => ServiceWorker.Types.serviceWorkerContainer =
  "serviceWorker"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMediaKeySystemAccess)
*/
@send
external requestMediaKeySystemAccess: (
  Prelude.Types.navigator,
  ~keySystem: string,
  ~supportedConfigurations: array<Prelude.Types.mediaKeySystemConfiguration>,
) => promise<'mediaKeySystemAccess> = "requestMediaKeySystemAccess"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Navigator/requestMIDIAccess)
*/
@send
external requestMIDIAccess: (
  Prelude.Types.navigator,
  ~options: WebMIDI.Types.midiOptions=?,
) => promise<WebMIDI.Types.midiAccess> = "requestMIDIAccess"
