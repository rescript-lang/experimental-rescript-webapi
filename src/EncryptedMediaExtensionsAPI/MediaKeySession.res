open EncryptedMediaExtensionsAPI

include EventTarget.Impl({type t = mediaKeySession})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/generateRequest)
*/
@send
external generateRequest: (
  mediaKeySession,
  ~initDataType: string,
  ~initData: DataView.t,
) => promise<unit> = "generateRequest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/generateRequest)
*/
@send
external generateRequestWithArrayBuffer: (
  mediaKeySession,
  ~initDataType: string,
  ~initData: ArrayBuffer.t,
) => promise<unit> = "generateRequest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/load)
*/
@send
external load: (mediaKeySession, string) => promise<bool> = "load"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/update)
*/
@send
external update: (mediaKeySession, DataView.t) => promise<unit> = "update"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/update)
*/
@send
external updateWithArrayBuffer: (mediaKeySession, ArrayBuffer.t) => promise<unit> = "update"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/close)
*/
@send
external close: mediaKeySession => promise<unit> = "close"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/remove)
*/
@send
external remove: mediaKeySession => promise<unit> = "remove"
