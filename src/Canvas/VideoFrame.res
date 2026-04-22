/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make: (
  ~image: WebApi.DOM.Types.htmlImageElement,
  ~init: WebApi.DOM.Types.videoFrameInit=?,
) => WebApi.DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make2: (
  ~image: WebApi.DOM.Types.svgImageElement,
  ~init: WebApi.DOM.Types.videoFrameInit=?,
) => WebApi.DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make3: (
  ~image: WebApi.DOM.Types.htmlVideoElement,
  ~init: WebApi.DOM.Types.videoFrameInit=?,
) => WebApi.DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make4: (
  ~image: WebApi.DOM.Types.htmlCanvasElement,
  ~init: WebApi.DOM.Types.videoFrameInit=?,
) => WebApi.DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make5: (
  ~image: Types.imageBitmap,
  ~init: WebApi.DOM.Types.videoFrameInit=?,
) => WebApi.DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make6: (
  ~image: Types.offscreenCanvas,
  ~init: WebApi.DOM.Types.videoFrameInit=?,
) => WebApi.DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make7: (
  ~image: WebApi.DOM.Types.videoFrame,
  ~init: WebApi.DOM.Types.videoFrameInit=?,
) => WebApi.DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make8: (
  ~data: ArrayBuffer.t,
  ~init: WebApi.DOM.Types.videoFrameBufferInit,
) => WebApi.DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make9: (
  ~data: WebApi.Base.ArrayBufferTypedArrayOrDataView.t,
  ~init: WebApi.DOM.Types.videoFrameBufferInit,
) => WebApi.DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make10: (
  ~data: DataView.t,
  ~init: WebApi.DOM.Types.videoFrameBufferInit,
) => WebApi.DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/allocationSize)
*/
@send
external allocationSize: (
  WebApi.DOM.Types.videoFrame,
  ~options: WebApi.DOM.Types.videoFrameCopyToOptions=?,
) => int = "allocationSize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo: (
  WebApi.DOM.Types.videoFrame,
  ~destination: ArrayBuffer.t,
  ~options: WebApi.DOM.Types.videoFrameCopyToOptions=?,
) => promise<array<WebApi.DOM.Types.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo2: (
  WebApi.DOM.Types.videoFrame,
  ~destination: WebApi.Base.ArrayBufferTypedArrayOrDataView.t,
  ~options: WebApi.DOM.Types.videoFrameCopyToOptions=?,
) => promise<array<WebApi.DOM.Types.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo3: (
  WebApi.DOM.Types.videoFrame,
  ~destination: DataView.t,
  ~options: WebApi.DOM.Types.videoFrameCopyToOptions=?,
) => promise<array<WebApi.DOM.Types.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/clone)
*/
@send
external clone: WebApi.DOM.Types.videoFrame => WebApi.DOM.Types.videoFrame = "clone"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/close)
*/
@send
external close: WebApi.DOM.Types.videoFrame => unit = "close"
