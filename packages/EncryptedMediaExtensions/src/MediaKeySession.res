include WebApiEvent.EventTarget.Impl({type t = Types.mediaKeySession})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/generateRequest)
*/
@send
external generateRequest: (
  Types.mediaKeySession,
  ~initDataType: string,
  ~initData: DataView.t,
) => promise<unit> = "generateRequest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/generateRequest)
*/
@send
external generateRequest2: (
  Types.mediaKeySession,
  ~initDataType: string,
  ~initData: ArrayBuffer.t,
) => promise<unit> = "generateRequest"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/load)
*/
@send
external load: (Types.mediaKeySession, string) => promise<bool> = "load"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/update)
*/
@send
external update: (Types.mediaKeySession, DataView.t) => promise<unit> = "update"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/update)
*/
@send
external update2: (Types.mediaKeySession, ArrayBuffer.t) => promise<unit> = "update"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/close)
*/
@send
external close: Types.mediaKeySession => promise<unit> = "close"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/MediaKeySession/remove)
*/
@send
external remove: Types.mediaKeySession => promise<unit> = "remove"
