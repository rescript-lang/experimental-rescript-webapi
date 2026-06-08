/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/mediaKeys)
*/
@get
external mediaKeys: DOMTypes.htmlMediaElement => Null.t<EncryptedMediaExtensionsTypes.mediaKeys> =
  "mediaKeys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/setMediaKeys)
*/
@send
external setMediaKeys: (
  DOMTypes.htmlMediaElement,
  EncryptedMediaExtensionsTypes.mediaKeys,
) => promise<unit> = "setMediaKeys"
