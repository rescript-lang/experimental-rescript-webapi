/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/createSession)
*/
@send
external createSession: (Types.mediaKeys, ~sessionType: Types.mediaKeySessionType=?) => Types.mediaKeySession =
  "createSession"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/getStatusForPolicy)
*/
@send
external getStatusForPolicy: (Types.mediaKeys, ~policy: Types.mediaKeysPolicy=?) => promise<Types.mediaKeyStatus> =
  "getStatusForPolicy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/setServerCertificate)
*/
@send
external setServerCertificate: (Types.mediaKeys, DataView.t) => promise<bool> = "setServerCertificate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/setServerCertificate)
*/
@send
external setServerCertificate2: (Types.mediaKeys, ArrayBuffer.t) => promise<bool> = "setServerCertificate"
