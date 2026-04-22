/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make: (
  ~image: DOM.Types.htmlImageElement,
  ~init: DOM.Types.videoFrameInit=?,
) => DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make2: (
  ~image: DOM.Types.svgImageElement,
  ~init: DOM.Types.videoFrameInit=?,
) => DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make3: (
  ~image: DOM.Types.htmlVideoElement,
  ~init: DOM.Types.videoFrameInit=?,
) => DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make4: (
  ~image: DOM.Types.htmlCanvasElement,
  ~init: DOM.Types.videoFrameInit=?,
) => DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make5: (
  ~image: CanvasTypes.imageBitmap,
  ~init: DOM.Types.videoFrameInit=?,
) => DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make6: (
  ~image: CanvasTypes.offscreenCanvas,
  ~init: DOM.Types.videoFrameInit=?,
) => DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make7: (
  ~image: DOM.Types.videoFrame,
  ~init: DOM.Types.videoFrameInit=?,
) => DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make8: (
  ~data: ArrayBuffer.t,
  ~init: DOM.Types.videoFrameBufferInit,
) => DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make9: (
  ~data: Base.ArrayBufferTypedArrayOrDataView.t,
  ~init: DOM.Types.videoFrameBufferInit,
) => DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make10: (
  ~data: DataView.t,
  ~init: DOM.Types.videoFrameBufferInit,
) => DOM.Types.videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/allocationSize)
*/
@send
external allocationSize: (
  DOM.Types.videoFrame,
  ~options: DOM.Types.videoFrameCopyToOptions=?,
) => int = "allocationSize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo: (
  DOM.Types.videoFrame,
  ~destination: ArrayBuffer.t,
  ~options: DOM.Types.videoFrameCopyToOptions=?,
) => promise<array<DOM.Types.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo2: (
  DOM.Types.videoFrame,
  ~destination: Base.ArrayBufferTypedArrayOrDataView.t,
  ~options: DOM.Types.videoFrameCopyToOptions=?,
) => promise<array<DOM.Types.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo3: (
  DOM.Types.videoFrame,
  ~destination: DataView.t,
  ~options: DOM.Types.videoFrameCopyToOptions=?,
) => promise<array<DOM.Types.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/clone)
*/
@send
external clone: DOM.Types.videoFrame => DOM.Types.videoFrame = "clone"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/close)
*/
@send
external close: DOM.Types.videoFrame => unit = "close"
