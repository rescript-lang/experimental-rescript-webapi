let htmlImageElement: DOM.Types.htmlImageElement = Obj.magic()
let svgImageElement: DOM.Types.svgImageElement = Obj.magic()
let htmlVideoElement: DOM.Types.htmlVideoElement = Obj.magic()
let htmlCanvasElement: DOM.Types.htmlCanvasElement = Obj.magic()
let imageBitmap: Canvas.Types.imageBitmap = Obj.magic()
let offscreenCanvas: Canvas.Types.offscreenCanvas = Obj.magic()
let videoFrame: DOM.Types.videoFrame = Obj.magic()
let arrayBuffer: ArrayBuffer.t = Obj.magic()
let typedArray: TypedArray.t<int> = Obj.magic()
let dataView: DataView.t = Obj.magic()
let videoFrameInit: DOM.Types.videoFrameInit = Obj.magic()
let videoFrameBufferInit: DOM.Types.videoFrameBufferInit = Obj.magic()

let _fromHTMLImageElement = Canvas.VideoFrame.fromHTMLImageElement(
  ~image=htmlImageElement,
  ~init=videoFrameInit,
)

let _fromSVGImageElement = Canvas.VideoFrame.fromSVGImageElement(
  ~image=svgImageElement,
  ~init=videoFrameInit,
)

let _fromHTMLVideoElement = Canvas.VideoFrame.fromHTMLVideoElement(
  ~image=htmlVideoElement,
  ~init=videoFrameInit,
)

let _fromHTMLCanvasElement = Canvas.VideoFrame.fromHTMLCanvasElement(
  ~image=htmlCanvasElement,
  ~init=videoFrameInit,
)

let _fromImageBitmap = Canvas.VideoFrame.fromImageBitmap(~image=imageBitmap, ~init=videoFrameInit)

let _fromOffscreenCanvas = Canvas.VideoFrame.fromOffscreenCanvas(
  ~image=offscreenCanvas,
  ~init=videoFrameInit,
)

let _fromVideoFrame = Canvas.VideoFrame.fromVideoFrame(~image=videoFrame, ~init=videoFrameInit)

let _fromArrayBuffer = Canvas.VideoFrame.fromArrayBuffer(
  ~data=arrayBuffer,
  ~init=videoFrameBufferInit,
)

let _fromTypedArray = Canvas.VideoFrame.fromTypedArray(~data=typedArray, ~init=videoFrameBufferInit)

let _fromDataView = Canvas.VideoFrame.fromDataView(~data=dataView, ~init=videoFrameBufferInit)
