include HTMLMediaElement.Impl({type t = Types.htmlVideoElement})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/getVideoPlaybackQuality)
*/
@send
external getVideoPlaybackQuality: Types.htmlVideoElement => Types.videoPlaybackQuality =
  "getVideoPlaybackQuality"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/requestPictureInPicture)
*/
@send
external requestPictureInPicture: Types.htmlVideoElement => promise<
  WebApiPictureInPicture.Types.pictureInPictureWindow,
> = "requestPictureInPicture"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/requestVideoFrameCallback)
*/
@send
external requestVideoFrameCallback: (
  Types.htmlVideoElement,
  (float, Types.videoFrameCallbackMetadata) => unit,
) => int = "requestVideoFrameCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/cancelVideoFrameCallback)
*/
@send
external cancelVideoFrameCallback: (Types.htmlVideoElement, int) => unit =
  "cancelVideoFrameCallback"
