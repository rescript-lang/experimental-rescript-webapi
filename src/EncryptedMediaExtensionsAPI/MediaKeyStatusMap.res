open Prelude
open EncryptedMediaExtensionsAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeyStatusMap/has)
*/
@send
external has: (mediaKeyStatusMap, bufferSource) => bool = "has"
