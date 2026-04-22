/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/mediaKeys)
*/
@get
external mediaKeys: DOM.Types.htmlMediaElement => Null.t<EncryptedMediaExtensionsTypes.mediaKeys> =
  "mediaKeys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/setMediaKeys)
*/
@send
external setMediaKeys: (
  DOM.Types.htmlMediaElement,
  EncryptedMediaExtensionsTypes.mediaKeys,
) => promise<unit> = "setMediaKeys"
