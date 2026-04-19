type sharedArrayBuffer = unknown

/**
`fromHTMLImageElement(~image: HTMLImageElement.t, ~init: videoFrameInit=?)`

The VideoFrame() constructor creates a new VideoFrame from an HTMLImageElement source.

Source shape:
- `image`: local [`HTMLImageElement.t`](../dom/html-image-element#t) mapped to MDN [HTMLImageElement](https://developer.mozilla.org/docs/Web/API/HTMLImageElement).
- `init`: local [`videoFrameInit`](../dom#videoFrameInit) values for optional frame initialization.

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

The VideoFrame() constructor creates a new VideoFrame from an SVGImageElement source.

Source shape:
- `image`: local [`SVGImageElement.t`](../dom/svg-image-element#t) mapped to MDN [SVGImageElement](https://developer.mozilla.org/docs/Web/API/SVGImageElement).
- `init`: local [`videoFrameInit`](../dom#videoFrameInit) values for optional frame initialization.

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

The VideoFrame() constructor creates a new VideoFrame from an HTMLVideoElement source.

Source shape:
- `image`: local [`HTMLVideoElement.t`](../dom/html-video-element#t) mapped to MDN [HTMLVideoElement](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement).
- `init`: local [`videoFrameInit`](../dom#videoFrameInit) values for optional frame initialization.

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

The VideoFrame() constructor creates a new VideoFrame from an HTMLCanvasElement source.

Source shape:
- `image`: local [`HTMLCanvasElement.t`](./html-canvas-element#t) mapped to MDN [HTMLCanvasElement](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement).
- `init`: local [`videoFrameInit`](../dom#videoFrameInit) values for optional frame initialization.

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

The VideoFrame() constructor creates a new VideoFrame from an ImageBitmap source.

Source shape:
- `image`: local [`ImageBitmap.t`](./image-bitmap#t) mapped to MDN [ImageBitmap](https://developer.mozilla.org/docs/Web/API/ImageBitmap).
- `init`: local [`videoFrameInit`](../dom#videoFrameInit) values for optional frame initialization.

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

The VideoFrame() constructor creates a new VideoFrame from an OffscreenCanvas source.

Source shape:
- `image`: local [`OffscreenCanvas.t`](./offscreen-canvas#t) mapped to MDN [OffscreenCanvas](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas).
- `init`: local [`videoFrameInit`](../dom#videoFrameInit) values for optional frame initialization.

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

The VideoFrame() constructor creates a new VideoFrame from an existing VideoFrame source.

Source shape:
- `image`: local [`VideoFrame.t`](#t) mapped to MDN [VideoFrame](https://developer.mozilla.org/docs/Web/API/VideoFrame).
- `init`: local [`videoFrameInit`](../dom#videoFrameInit) values for optional frame initialization.

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

The VideoFrame() constructor creates a new VideoFrame from ArrayBuffer-backed pixel data.

Source shape:
- `data`: ReScript [`ArrayBuffer.t`](https://rescript-lang.org/docs/manual/api/stdlib/arraybuffer) mapped to MDN [ArrayBuffer](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/ArrayBuffer).
- `init`: local [`videoFrameBufferInit`](../dom#videoFrameBufferInit) values describing the buffer-backed frame layout.

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

The VideoFrame() constructor creates a new VideoFrame from SharedArrayBuffer-backed pixel data.

Source shape:
- `data`: opaque SharedArrayBuffer-aligned data accepted by MDN [SharedArrayBuffer](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/SharedArrayBuffer).
- `init`: local [`videoFrameBufferInit`](../dom#videoFrameBufferInit) values describing the buffer-backed frame layout.

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

The VideoFrame() constructor creates a new VideoFrame from DataView-backed pixel data.

Source shape:
- `data`: ReScript [`DataView.t`](https://rescript-lang.org/docs/manual/api/stdlib/dataview) mapped to MDN [DataView](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/DataView).
- `init`: local [`videoFrameBufferInit`](../dom#videoFrameBufferInit) values describing the buffer-backed frame layout.

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
  ~destination: WebApiPrelude.Types.ArrayBufferTypedArrayOrDataView.t,
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
