type t = DOM.htmlVideoElement = private {...DOM.htmlVideoElement}

include DomHTMLMediaElement.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/getVideoPlaybackQuality)
*/
@send
external getVideoPlaybackQuality: t => DOM.videoPlaybackQuality = "getVideoPlaybackQuality"

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
  (float, DOM.videoFrameCallbackMetadata) => unit,
) => int = "requestVideoFrameCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/cancelVideoFrameCallback)
*/
@send
external cancelVideoFrameCallback: (t, int) => unit = "cancelVideoFrameCallback"
