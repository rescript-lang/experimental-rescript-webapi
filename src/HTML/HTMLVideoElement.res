type t = DOMTypes.htmlVideoElement = private {...DOMTypes.htmlVideoElement}

include DomHTMLMediaElement.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/getVideoPlaybackQuality)
*/
@send
external getVideoPlaybackQuality: t => DOMTypes.videoPlaybackQuality = "getVideoPlaybackQuality"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/requestPictureInPicture)
*/
@send
external requestPictureInPicture: t => promise<PictureInPictureTypes.pictureInPictureWindow> =
  "requestPictureInPicture"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/requestVideoFrameCallback)
*/
@send
external requestVideoFrameCallback: (
  t,
  (float, DOMTypes.videoFrameCallbackMetadata) => unit,
) => int = "requestVideoFrameCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/cancelVideoFrameCallback)
*/
@send
external cancelVideoFrameCallback: (t, int) => unit = "cancelVideoFrameCallback"
