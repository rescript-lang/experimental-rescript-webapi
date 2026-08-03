/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/mediaKeys)
*/
@get
external mediaKeys: DomHTMLMediaElement.t => Null.t<EncryptedMediaExtensionsTypes.mediaKeys> =
  "mediaKeys"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/setMediaKeys)
*/
@send
external setMediaKeys: (
  DomHTMLMediaElement.t,
  EncryptedMediaExtensionsTypes.mediaKeys,
) => promise<unit> = "setMediaKeys"
