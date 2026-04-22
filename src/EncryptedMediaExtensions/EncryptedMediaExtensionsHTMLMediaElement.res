/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/mediaKeys)
*/
@get
external mediaKeys: WebApi.DOM.Types.htmlMediaElement => Null.t<Types.mediaKeys> = "mediaKeys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/setMediaKeys)
*/
@send
external setMediaKeys: (WebApi.DOM.Types.htmlMediaElement, Types.mediaKeys) => promise<unit> =
  "setMediaKeys"
