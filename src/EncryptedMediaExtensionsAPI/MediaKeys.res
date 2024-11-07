open EncryptedMediaExtensionsAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/createSession)
*/
@send
external createSession: (mediaKeys, ~sessionType: mediaKeySessionType=?) => mediaKeySession =
  "createSession"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/getStatusForPolicy)
*/
@send
external getStatusForPolicy: (mediaKeys, ~policy: mediaKeysPolicy=?) => Promise.t<mediaKeyStatus> =
  "getStatusForPolicy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/setServerCertificate)
*/
@send
external setServerCertificate: (mediaKeys, DataView.t) => Promise.t<bool> = "setServerCertificate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/setServerCertificate)
*/
@send
external setServerCertificate2: (mediaKeys, ArrayBuffer.t) => Promise.t<bool> =
  "setServerCertificate"
