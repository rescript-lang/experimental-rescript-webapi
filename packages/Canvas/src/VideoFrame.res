/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make: (
  ~image: WebApiDOM.Types.htmlImageElement,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make2: (
  ~image: WebApiDOM.Types.svgImageElement,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make3: (
  ~image: WebApiDOM.Types.htmlVideoElement,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make4: (
  ~image: WebApiDOM.Types.htmlCanvasElement,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make5: (
  ~image: Types.imageBitmap,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make6: (
  ~image: Types.offscreenCanvas,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make7: (
  ~image: WebApiDOM.Types.videoFrame,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make8: (
  ~data: ArrayBuffer.t,
  ~init: WebApiDOM.Types.videoFrameBufferInit,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make9: (
  ~data: WebApiPrelude.ArrayBufferTypedArrayOrDataView.t,
  ~init: WebApiDOM.Types.videoFrameBufferInit,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make10: (
  ~data: DataView.t,
  ~init: WebApiDOM.Types.videoFrameBufferInit,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/allocationSize)
*/
@send
external allocationSize: (
  WebApiDOM.Types.videoFrame,
  ~options: WebApiDOM.Types.videoFrameCopyToOptions=?,
) => int = "allocationSize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo: (
  WebApiDOM.Types.videoFrame,
  ~destination: ArrayBuffer.t,
  ~options: WebApiDOM.Types.videoFrameCopyToOptions=?,
) => promise<array<WebApiDOM.Types.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo2: (
  WebApiDOM.Types.videoFrame,
  ~destination: WebApiPrelude.ArrayBufferTypedArrayOrDataView.t,
  ~options: WebApiDOM.Types.videoFrameCopyToOptions=?,
) => promise<array<WebApiDOM.Types.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo3: (
  WebApiDOM.Types.videoFrame,
  ~destination: DataView.t,
  ~options: WebApiDOM.Types.videoFrameCopyToOptions=?,
) => promise<array<WebApiDOM.Types.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/clone)
*/
@send
external clone: WebApiDOM.Types.videoFrame => WebApiDOM.Types.videoFrame = "clone"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/close)
*/
@send
external close: WebApiDOM.Types.videoFrame => unit = "close"
