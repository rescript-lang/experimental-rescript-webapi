open DOMAPI
open Prelude
open CanvasAPI

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external make: (~image: htmlImageElement, ~init: videoFrameInit=?) => videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromSvgImage: (~image: svgImageElement, ~init: videoFrameInit=?) => videoFrame =
  "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromVideoElement: (~image: htmlVideoElement, ~init: videoFrameInit=?) => videoFrame =
  "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromCanvasElement: (~image: htmlCanvasElement, ~init: videoFrameInit=?) => videoFrame =
  "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromImageBitmap: (~image: imageBitmap, ~init: videoFrameInit=?) => videoFrame =
  "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromOffscreenCanvas: (~image: offscreenCanvas, ~init: videoFrameInit=?) => videoFrame =
  "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromVideoFrame: (~image: videoFrame, ~init: videoFrameInit=?) => videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromArrayBuffer: (~data: ArrayBuffer.t, ~init: videoFrameBufferInit) => videoFrame =
  "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromSharedArrayBuffer: (
  ~data: sharedArrayBuffer,
  ~init: videoFrameBufferInit,
) => videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromDataView: (~data: DataView.t, ~init: videoFrameBufferInit) => videoFrame = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/allocationSize)
*/
@send
external allocationSize: (videoFrame, ~options: videoFrameCopyToOptions=?) => int = "allocationSize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo: (
  videoFrame,
  ~destination: ArrayBuffer.t,
  ~options: videoFrameCopyToOptions=?,
) => promise<array<planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyToSharedArrayBuffer: (
  videoFrame,
  ~destination: sharedArrayBuffer,
  ~options: videoFrameCopyToOptions=?,
) => promise<array<planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyToDataView: (
  videoFrame,
  ~destination: DataView.t,
  ~options: videoFrameCopyToOptions=?,
) => promise<array<planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/clone)
*/
@send
external clone: videoFrame => videoFrame = "clone"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/close)
*/
@send
external close: videoFrame => unit = "close"
