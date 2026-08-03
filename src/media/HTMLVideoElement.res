type videoFrameCallbackMetadata = {
  mutable presentationTime: float,
  mutable expectedDisplayTime: float,
  mutable width: int,
  mutable height: int,
  mutable mediaTime: float,
  mutable presentedFrames: int,
  mutable processingDuration?: float,
  mutable captureTime?: float,
  mutable receiveTime?: float,
  mutable rtpTimestamp?: int,
}

/**
Provides special properties and methods for manipulating video objects. It also inherits properties and methods of HTMLMediaElement and HTMLElement.
[See HTMLVideoElement on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement)
TODO: mark as private once mutating fields of private records is allowed
*/
type t = {
  ...DomHTMLMediaElement.t,
  /**
    Gets or sets the width of the video element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/width)
    */
  mutable width: int,
  /**
    Gets or sets the height of the video element.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/height)
    */
  mutable height: int,
  /**
    Gets the intrinsic width of a video in CSS pixels, or zero if the dimensions are not known.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/videoWidth)
    */
  videoWidth: int,
  /**
    Gets the intrinsic height of a video in CSS pixels, or zero if the dimensions are not known.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/videoHeight)
    */
  videoHeight: int,
  /**
    Gets or sets a WebApiURL of an image to display, for example, like a movie poster. This can be a still frame from the video, or another image if no video data is available.
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/poster)
    */
  mutable poster: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/disablePictureInPicture)
    */
  mutable disablePictureInPicture: bool,
}

include DomHTMLMediaElement.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/getVideoPlaybackQuality)
*/
@send
external getVideoPlaybackQuality: t => VideoPlaybackQuality.t = "getVideoPlaybackQuality"

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
external requestVideoFrameCallback: (t, (float, videoFrameCallbackMetadata) => unit) => int =
  "requestVideoFrameCallback"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/cancelVideoFrameCallback)
*/
@send
external cancelVideoFrameCallback: (t, int) => unit = "cancelVideoFrameCallback"
