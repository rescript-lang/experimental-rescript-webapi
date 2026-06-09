/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/mediaKeys)
*/
@get
external mediaKeys: DOM.htmlMediaElement => Null.t<EncryptedMediaExtensionsTypes.mediaKeys> =
  "mediaKeys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/setMediaKeys)
*/
@send
external setMediaKeys: (
  DOM.htmlMediaElement,
  EncryptedMediaExtensionsTypes.mediaKeys,
) => promise<unit> = "setMediaKeys"
