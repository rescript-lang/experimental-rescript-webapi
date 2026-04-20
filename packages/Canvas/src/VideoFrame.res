type sharedArrayBuffer = unknown

/**
`fromHTMLImageElement(~image: HTMLImageElement.t, ~init: videoFrameInit=?)`

Creates a new `VideoFrame` from an `HTMLImageElement`.

```res
let frame = VideoFrame.fromHTMLImageElement(~image=myImageElement)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromHTMLImageElement: (
  ~image: WebApiDOM.Types.htmlImageElement,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
`fromSVGImageElement(~image: SVGImageElement.t, ~init: videoFrameInit=?)`

Creates a new `VideoFrame` from an `SVGImageElement`.

```res
let frame = VideoFrame.fromSVGImageElement(~image=mySvgImageElement)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromSVGImageElement: (
  ~image: WebApiDOM.Types.svgImageElement,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
`fromHTMLVideoElement(~image: HTMLVideoElement.t, ~init: videoFrameInit=?)`

Creates a new `VideoFrame` from an `HTMLVideoElement`.

```res
let frame = VideoFrame.fromHTMLVideoElement(~image=myVideoElement)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromHTMLVideoElement: (
  ~image: WebApiDOM.Types.htmlVideoElement,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
`fromHTMLCanvasElement(~image: HTMLCanvasElement.t, ~init: videoFrameInit=?)`

Creates a new `VideoFrame` from an `HTMLCanvasElement`.

```res
let frame = VideoFrame.fromHTMLCanvasElement(~image=myCanvasElement)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromHTMLCanvasElement: (
  ~image: WebApiDOM.Types.htmlCanvasElement,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
`fromImageBitmap(~image: ImageBitmap.t, ~init: videoFrameInit=?)`

Creates a new `VideoFrame` from an `ImageBitmap`.

```res
let frame = VideoFrame.fromImageBitmap(~image=myImageBitmap)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromImageBitmap: (
  ~image: Types.imageBitmap,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
`fromOffscreenCanvas(~image: OffscreenCanvas.t, ~init: videoFrameInit=?)`

Creates a new `VideoFrame` from an `OffscreenCanvas`.

```res
let frame = VideoFrame.fromOffscreenCanvas(~image=myOffscreenCanvas)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromOffscreenCanvas: (
  ~image: Types.offscreenCanvas,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
`fromVideoFrame(~image: VideoFrame.t, ~init: videoFrameInit=?)`

Creates a new `VideoFrame` from another `VideoFrame`.

```res
let frame = VideoFrame.fromVideoFrame(~image=otherFrame)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromVideoFrame: (
  ~image: WebApiDOM.Types.videoFrame,
  ~init: WebApiDOM.Types.videoFrameInit=?,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
`fromArrayBuffer(~data: ArrayBuffer.t, ~init: videoFrameBufferInit)`

Creates a new `VideoFrame` from `ArrayBuffer`-backed pixel data.

```res
let frame =
  VideoFrame.fromArrayBuffer(~data=myArrayBuffer, ~init=myVideoFrameBufferInit)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromArrayBuffer: (
  ~data: ArrayBuffer.t,
  ~init: WebApiDOM.Types.videoFrameBufferInit,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
`fromSharedArrayBuffer(~data: sharedArrayBuffer, ~init: videoFrameBufferInit)`

Creates a new `VideoFrame` from `SharedArrayBuffer`-backed pixel data.

```res
let frame =
  VideoFrame.fromSharedArrayBuffer(
    ~data=mySharedArrayBuffer,
    ~init=myVideoFrameBufferInit,
  )
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromSharedArrayBuffer: (
  ~data: sharedArrayBuffer,
  ~init: WebApiDOM.Types.videoFrameBufferInit,
) => WebApiDOM.Types.videoFrame = "VideoFrame"

/**
`fromDataView(~data: DataView.t, ~init: videoFrameBufferInit)`

Creates a new `VideoFrame` from `DataView`-backed pixel data.

```res
let frame =
  VideoFrame.fromDataView(~data=myDataView, ~init=myVideoFrameBufferInit)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromDataView: (
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
  ~destination: WebApiBase.ArrayBufferTypedArrayOrDataView.t,
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
