let htmlImageElement: HTMLImageElement.t = Obj.magic()
let svgImageElement: SVGElement.svgImageElement = Obj.magic()
let htmlVideoElement: HTMLVideoElement.t = Obj.magic()
let htmlCanvasElement: HTMLCanvasElement.t = Obj.magic()
let imageBitmap: CanvasTypes.imageBitmap = Obj.magic()
let offscreenCanvas: CanvasTypes.offscreenCanvas = Obj.magic()
let videoFrame: DOM.videoFrame = Obj.magic()
let arrayBuffer: ArrayBuffer.t = Obj.magic()
let typedArray: TypedArray.t<int> = Obj.magic()
let dataView: DataView.t = Obj.magic()
let videoFrameInit: DOM.videoFrameInit = Obj.magic()
let videoFrameBufferInit: DOM.videoFrameBufferInit = Obj.magic()

let _fromHTMLImageElement = VideoFrame.fromHTMLImageElement(
  ~image=htmlImageElement,
  ~init=videoFrameInit,
)

let _fromSVGImageElement = VideoFrame.fromSVGImageElement(
  ~image=svgImageElement,
  ~init=videoFrameInit,
)

let _fromHTMLVideoElement = VideoFrame.fromHTMLVideoElement(
  ~image=htmlVideoElement,
  ~init=videoFrameInit,
)

let _fromHTMLCanvasElement = VideoFrame.fromHTMLCanvasElement(
  ~image=htmlCanvasElement,
  ~init=videoFrameInit,
)

let _fromImageBitmap = VideoFrame.fromImageBitmap(~image=imageBitmap, ~init=videoFrameInit)

let _fromOffscreenCanvas = VideoFrame.fromOffscreenCanvas(
  ~image=offscreenCanvas,
  ~init=videoFrameInit,
)

let _fromVideoFrame = VideoFrame.fromVideoFrame(~image=videoFrame, ~init=videoFrameInit)

let _fromArrayBuffer = VideoFrame.fromArrayBuffer(~data=arrayBuffer, ~init=videoFrameBufferInit)

let _fromTypedArray = VideoFrame.fromTypedArray(~data=typedArray, ~init=videoFrameBufferInit)

let _fromDataView = VideoFrame.fromDataView(~data=dataView, ~init=videoFrameBufferInit)
