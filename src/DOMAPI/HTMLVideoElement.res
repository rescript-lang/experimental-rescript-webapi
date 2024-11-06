open DOMAPI
open PictureInPictureAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement)
*/
@new
external make: unit => htmlVideoElement = "HTMLVideoElement"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/getVideoPlaybackQuality)
*/
@send
external getVideoPlaybackQuality: htmlVideoElement => videoPlaybackQuality =
  "getVideoPlaybackQuality"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/requestPictureInPicture)
*/
@send
external requestPictureInPicture: htmlVideoElement => Promise.t<pictureInPictureWindow> =
  "requestPictureInPicture"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/requestVideoFrameCallback)
*/
@send
external requestVideoFrameCallback: (htmlVideoElement, videoFrameRequestCallback) => int =
  "requestVideoFrameCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/cancelVideoFrameCallback)
*/
@send
external cancelVideoFrameCallback: (htmlVideoElement, int) => unit = "cancelVideoFrameCallback"
