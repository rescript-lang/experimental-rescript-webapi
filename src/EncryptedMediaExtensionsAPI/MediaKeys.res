open EncryptedMediaExtensionsAPI
open Prelude

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/createSession)
*/
@send
external createSession: (mediaKeys, mediaKeySessionType) => mediaKeySession = "createSession"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/getStatusForPolicy)
*/
@send
external getStatusForPolicy: (mediaKeys, mediaKeysPolicy) => Promise.t<mediaKeyStatus> =
  "getStatusForPolicy"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeys/setServerCertificate)
*/
@send
external setServerCertificate: (mediaKeys, bufferSource) => Promise.t<bool> = "setServerCertificate"
