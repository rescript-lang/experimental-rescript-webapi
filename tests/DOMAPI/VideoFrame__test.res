let htmlImageElement: WebApiDOM.Types.htmlImageElement = Obj.magic()
let svgImageElement: WebApiDOM.Types.svgImageElement = Obj.magic()
let htmlVideoElement: WebApiDOM.Types.htmlVideoElement = Obj.magic()
let htmlCanvasElement: WebApiDOM.Types.htmlCanvasElement = Obj.magic()
let imageBitmap: WebApiCanvas.Types.imageBitmap = Obj.magic()
let offscreenCanvas: WebApiCanvas.Types.offscreenCanvas = Obj.magic()
let videoFrame: WebApiDOM.Types.videoFrame = Obj.magic()
let arrayBuffer: ArrayBuffer.t = Obj.magic()
let sharedArrayBuffer = Obj.magic()
let dataView: DataView.t = Obj.magic()
let videoFrameInit: WebApiDOM.Types.videoFrameInit = Obj.magic()
let videoFrameBufferInit: WebApiDOM.Types.videoFrameBufferInit = Obj.magic()

let _fromHTMLImageElement = WebApiCanvas.VideoFrame.fromHTMLImageElement(
  ~image=htmlImageElement,
  ~init=videoFrameInit,
)

let _fromSVGImageElement = WebApiCanvas.VideoFrame.fromSVGImageElement(
  ~image=svgImageElement,
  ~init=videoFrameInit,
)

let _fromHTMLVideoElement = WebApiCanvas.VideoFrame.fromHTMLVideoElement(
  ~image=htmlVideoElement,
  ~init=videoFrameInit,
)

let _fromHTMLCanvasElement = WebApiCanvas.VideoFrame.fromHTMLCanvasElement(
  ~image=htmlCanvasElement,
  ~init=videoFrameInit,
)

let _fromImageBitmap = WebApiCanvas.VideoFrame.fromImageBitmap(
  ~image=imageBitmap,
  ~init=videoFrameInit,
)

let _fromOffscreenCanvas = WebApiCanvas.VideoFrame.fromOffscreenCanvas(
  ~image=offscreenCanvas,
  ~init=videoFrameInit,
)

let _fromVideoFrame = WebApiCanvas.VideoFrame.fromVideoFrame(
  ~image=videoFrame,
  ~init=videoFrameInit,
)

let _fromArrayBuffer = WebApiCanvas.VideoFrame.fromArrayBuffer(
  ~data=arrayBuffer,
  ~init=videoFrameBufferInit,
)

let _fromSharedArrayBuffer = WebApiCanvas.VideoFrame.fromSharedArrayBuffer(
  ~data=sharedArrayBuffer,
  ~init=videoFrameBufferInit,
)

let _fromDataView = WebApiCanvas.VideoFrame.fromDataView(~data=dataView, ~init=videoFrameBufferInit)
