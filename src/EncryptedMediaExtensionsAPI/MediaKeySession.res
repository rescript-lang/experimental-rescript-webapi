open EncryptedMediaExtensionsAPI

include EventTarget.Impl({
  type t = mediaKeySession
})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/generateRequest)
*/
@send
external generateRequest: (
  mediaKeySession,
  ~initDataType: string,
  ~initData: DataView.t,
) => Promise.t<unit> = "generateRequest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/generateRequest)
*/
@send
external generateRequest2: (
  mediaKeySession,
  ~initDataType: string,
  ~initData: ArrayBuffer.t,
) => Promise.t<unit> = "generateRequest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/load)
*/
@send
external load: (mediaKeySession, string) => Promise.t<bool> = "load"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/update)
*/
@send
external update: (mediaKeySession, DataView.t) => Promise.t<unit> = "update"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/update)
*/
@send
external update2: (mediaKeySession, ArrayBuffer.t) => Promise.t<unit> = "update"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/close)
*/
@send
external close: mediaKeySession => Promise.t<unit> = "close"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/remove)
*/
@send
external remove: mediaKeySession => Promise.t<unit> = "remove"
