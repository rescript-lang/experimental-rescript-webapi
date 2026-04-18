/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/mediaKeys)
*/
@get
external mediaKeys: DOM.Types.htmlMediaElement => Null.t<Types.mediaKeys> = "mediaKeys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/setMediaKeys)
*/
@send
external setMediaKeys: (DOM.Types.htmlMediaElement, Types.mediaKeys) => promise<unit> = "setMediaKeys"
