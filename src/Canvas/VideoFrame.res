type t = DomTypes.videoFrame = private {...DomTypes.videoFrame}

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
  ~image: DomTypes.htmlImageElement,
  ~init: DomTypes.videoFrameInit=?,
) => t = "VideoFrame"

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
  ~image: DomTypes.svgImageElement,
  ~init: DomTypes.videoFrameInit=?,
) => t = "VideoFrame"

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
  ~image: DomTypes.htmlVideoElement,
  ~init: DomTypes.videoFrameInit=?,
) => t = "VideoFrame"

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
  ~image: HTMLCanvasElement.t,
  ~init: DomTypes.videoFrameInit=?,
) => t = "VideoFrame"

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
  ~image: ImageBitmap.t,
  ~init: DomTypes.videoFrameInit=?,
) => t = "VideoFrame"

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
  ~image: OffscreenCanvas.t,
  ~init: DomTypes.videoFrameInit=?,
) => t = "VideoFrame"

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
  ~image: t,
  ~init: DomTypes.videoFrameInit=?,
) => t = "VideoFrame"

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
  ~init: DomTypes.videoFrameBufferInit,
) => t = "VideoFrame"

/**
`fromTypedArray(~data: TypedArray.t<'t>, ~init: videoFrameBufferInit)`

Creates a new `VideoFrame` from typed-array-backed pixel data.

```res
let frame =
  VideoFrame.fromTypedArray(~data=myTypedArray, ~init=myVideoFrameBufferInit)
```

[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame)
*/
@new
external fromTypedArray: (
  ~data: TypedArray.t<'t>,
  ~init: DomTypes.videoFrameBufferInit,
) => t = "VideoFrame"

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
  ~init: DomTypes.videoFrameBufferInit,
) => t = "VideoFrame"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/allocationSize)
*/
@send
external allocationSize: (
  t,
  ~options: DomTypes.videoFrameCopyToOptions=?,
) => int = "allocationSize"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo: (
  t,
  ~destination: ArrayBuffer.t,
  ~options: DomTypes.videoFrameCopyToOptions=?,
) => promise<array<DomTypes.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo2: (
  t,
  ~destination: ArrayBuffer.t,
  ~options: DomTypes.videoFrameCopyToOptions=?,
) => promise<array<DomTypes.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/copyTo)
*/
@send
external copyTo3: (
  t,
  ~destination: DataView.t,
  ~options: DomTypes.videoFrameCopyToOptions=?,
) => promise<array<DomTypes.planeLayout>> = "copyTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/clone)
*/
@send
external clone: t => t = "clone"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/VideoFrame/close)
*/
@send
external close: t => unit = "close"
