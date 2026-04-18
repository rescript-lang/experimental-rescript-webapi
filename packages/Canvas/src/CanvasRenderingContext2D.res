/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/save)
*/
@send
external save: WebApiDOM.Types.canvasRenderingContext2D => unit = "save"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/restore)
*/
@send
external restore: WebApiDOM.Types.canvasRenderingContext2D => unit = "restore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/reset)
*/
@send
external reset: WebApiDOM.Types.canvasRenderingContext2D => unit = "reset"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isContextLost)
*/
@send
external isContextLost: WebApiDOM.Types.canvasRenderingContext2D => bool = "isContextLost"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/scale)
*/
@send
external scale: (WebApiDOM.Types.canvasRenderingContext2D, ~x: float, ~y: float) => unit = "scale"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/rotate)
*/
@send
external rotate: (WebApiDOM.Types.canvasRenderingContext2D, float) => unit = "rotate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/translate)
*/
@send
external translate: (WebApiDOM.Types.canvasRenderingContext2D, ~x: float, ~y: float) => unit = "translate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/transform)
*/
@send
external transform: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~a: float,
  ~b: float,
  ~c: float,
  ~d: float,
  ~e: float,
  ~f: float,
) => unit = "transform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getTransform)
*/
@send
external getTransform: WebApiDOM.Types.canvasRenderingContext2D => WebApiDOM.Types.domMatrix = "getTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/setTransform)
*/
@send
external setTransform: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~a: float,
  ~b: float,
  ~c: float,
  ~d: float,
  ~e: float,
  ~f: float,
) => unit = "setTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/setTransform)
*/
@send
external setTransform2: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~transform: WebApiDOM.Types.domMatrix2DInit=?,
) => unit = "setTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/resetTransform)
*/
@send
external resetTransform: WebApiDOM.Types.canvasRenderingContext2D => unit = "resetTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createLinearGradient)
*/
@send
external createLinearGradient: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x0: float,
  ~y0: float,
  ~x1: float,
  ~y1: float,
) => Types.canvasGradient = "createLinearGradient"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createRadialGradient)
*/
@send
external createRadialGradient: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x0: float,
  ~y0: float,
  ~r0: float,
  ~x1: float,
  ~y1: float,
  ~r1: float,
) => Types.canvasGradient = "createRadialGradient"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createConicGradient)
*/
@send
external createConicGradient: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~startAngle: float,
  ~x: float,
  ~y: float,
) => Types.canvasGradient = "createConicGradient"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlImageElement,
  ~repetition: string,
) => Types.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern2: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.svgImageElement,
  ~repetition: string,
) => Types.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern3: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlVideoElement,
  ~repetition: string,
) => Types.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern4: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlCanvasElement,
  ~repetition: string,
) => Types.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern5: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: Types.imageBitmap,
  ~repetition: string,
) => Types.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern6: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: Types.offscreenCanvas,
  ~repetition: string,
) => Types.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern7: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.videoFrame,
  ~repetition: string,
) => Types.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clearRect)
*/
@send
external clearRect: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
) => unit = "clearRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fillRect)
*/
@send
external fillRect: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
) => unit = "fillRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/strokeRect)
*/
@send
external strokeRect: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
) => unit = "strokeRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/beginPath)
*/
@send
external beginPath: WebApiDOM.Types.canvasRenderingContext2D => unit = "beginPath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fill)
*/
@send
external fill: (WebApiDOM.Types.canvasRenderingContext2D, ~fillRule: Types.canvasFillRule=?) => unit =
  "fill"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fill)
*/
@send
external fill2: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~path: Types.path2D,
  ~fillRule: Types.canvasFillRule=?,
) => unit = "fill"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/stroke)
*/
@send
external stroke: WebApiDOM.Types.canvasRenderingContext2D => unit = "stroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/stroke)
*/
@send
external stroke2: (WebApiDOM.Types.canvasRenderingContext2D, Types.path2D) => unit = "stroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clip)
*/
@send
external clip: (WebApiDOM.Types.canvasRenderingContext2D, ~fillRule: Types.canvasFillRule=?) => unit =
  "clip"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clip)
*/
@send
external clip2: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~path: Types.path2D,
  ~fillRule: Types.canvasFillRule=?,
) => unit = "clip"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInPath)
*/
@send
external isPointInPath: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~fillRule: Types.canvasFillRule=?,
) => bool = "isPointInPath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInPath)
*/
@send
external isPointInPath2: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~path: Types.path2D,
  ~x: float,
  ~y: float,
  ~fillRule: Types.canvasFillRule=?,
) => bool = "isPointInPath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInStroke)
*/
@send
external isPointInStroke: (WebApiDOM.Types.canvasRenderingContext2D, ~x: float, ~y: float) => bool =
  "isPointInStroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInStroke)
*/
@send
external isPointInStroke2: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~path: Types.path2D,
  ~x: float,
  ~y: float,
) => bool = "isPointInStroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawFocusIfNeeded)
*/
@send
external drawFocusIfNeeded: (WebApiDOM.Types.canvasRenderingContext2D, WebApiDOM.Types.element) => unit =
  "drawFocusIfNeeded"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawFocusIfNeeded)
*/
@send
external drawFocusIfNeeded2: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~path: Types.path2D,
  ~element: WebApiDOM.Types.element,
) => unit = "drawFocusIfNeeded"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fillText)
*/
@send
external fillText: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~text: string,
  ~x: float,
  ~y: float,
  ~maxWidth: float=?,
) => unit = "fillText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/strokeText)
*/
@send
external strokeText: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~text: string,
  ~x: float,
  ~y: float,
  ~maxWidth: float=?,
) => unit = "strokeText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/measureText)
*/
@send
external measureText: (WebApiDOM.Types.canvasRenderingContext2D, string) => Types.textMetrics =
  "measureText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImage: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlImageElement,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithSvg: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.svgImageElement,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithVideo: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlVideoElement,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithCanvas: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlCanvasElement,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithImageBitmap: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: Types.imageBitmap,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithOffscreenCanvas: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: Types.offscreenCanvas,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithVideoFrame: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.videoFrame,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithDimensions: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlImageElement,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithSvgDimensions: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.svgImageElement,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithVideoDimensions: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlVideoElement,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithCanvasDimensions: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlCanvasElement,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithImageBitmapDimensions: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: Types.imageBitmap,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithOffscreenCanvasDimensions: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: Types.offscreenCanvas,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithVideoFrameDimensions: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.videoFrame,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithSubRectangle: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlImageElement,
  ~sx: float,
  ~sy: float,
  ~sw: float,
  ~sh: float,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithSvgSubRectangle: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.svgImageElement,
  ~sx: float,
  ~sy: float,
  ~sw: float,
  ~sh: float,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithVideoSubRectangle: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlVideoElement,
  ~sx: float,
  ~sy: float,
  ~sw: float,
  ~sh: float,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithCanvasSubRectangle: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.htmlCanvasElement,
  ~sx: float,
  ~sy: float,
  ~sw: float,
  ~sh: float,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithImageBitmapSubRectangle: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: Types.imageBitmap,
  ~sx: float,
  ~sy: float,
  ~sw: float,
  ~sh: float,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithOffscreenCanvasSubRectangle: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: Types.offscreenCanvas,
  ~sx: float,
  ~sy: float,
  ~sw: float,
  ~sh: float,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithVideoFrameSubRectangle: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~image: WebApiDOM.Types.videoFrame,
  ~sx: float,
  ~sy: float,
  ~sw: float,
  ~sh: float,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createImageData)
*/
@send
external createImageData: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~sw: int,
  ~sh: int,
  ~settings: WebApiDOM.Types.imageDataSettings=?,
) => WebApiDOM.Types.imageData = "createImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createImageData)
*/
@send
external createImageData2: (
  WebApiDOM.Types.canvasRenderingContext2D,
  WebApiDOM.Types.imageData,
) => WebApiDOM.Types.imageData = "createImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getImageData)
*/
@send
external getImageData: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~settings: WebApiDOM.Types.imageDataSettings=?,
) => WebApiDOM.Types.imageData = "getImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/putImageData)
*/
@send
external putImageData: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~imagedata: WebApiDOM.Types.imageData,
  ~dx: int,
  ~dy: int,
) => unit = "putImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/putImageData)
*/
@send
external putImageData2: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~imagedata: WebApiDOM.Types.imageData,
  ~dx: int,
  ~dy: int,
  ~dirtyX: int,
  ~dirtyY: int,
  ~dirtyWidth: int,
  ~dirtyHeight: int,
) => unit = "putImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/setLineDash)
*/
@send
external setLineDash: (WebApiDOM.Types.canvasRenderingContext2D, array<float>) => unit = "setLineDash"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getLineDash)
*/
@send
external getLineDash: WebApiDOM.Types.canvasRenderingContext2D => array<float> = "getLineDash"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/closePath)
*/
@send
external closePath: WebApiDOM.Types.canvasRenderingContext2D => unit = "closePath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/moveTo)
*/
@send
external moveTo: (WebApiDOM.Types.canvasRenderingContext2D, ~x: float, ~y: float) => unit = "moveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineTo)
*/
@send
external lineTo: (WebApiDOM.Types.canvasRenderingContext2D, ~x: float, ~y: float) => unit = "lineTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/quadraticCurveTo)
*/
@send
external quadraticCurveTo: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~cpx: float,
  ~cpy: float,
  ~x: float,
  ~y: float,
) => unit = "quadraticCurveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/bezierCurveTo)
*/
@send
external bezierCurveTo: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~cp1x: float,
  ~cp1y: float,
  ~cp2x: float,
  ~cp2y: float,
  ~x: float,
  ~y: float,
) => unit = "bezierCurveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/arcTo)
*/
@send
external arcTo: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x1: float,
  ~y1: float,
  ~x2: float,
  ~y2: float,
  ~radius: float,
) => unit = "arcTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/rect)
*/
@send
external rect: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
) => unit = "rect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
*/
@send
external roundRect: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
  ~radii_: array<float>=?,
) => unit = "roundRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
*/
@send
external roundRect2: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
  ~radii_: array<float>=?,
) => unit = "roundRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
*/
@send
external roundRect3: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
  ~radii_: array<float>=?,
) => unit = "roundRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/arc)
*/
@send
external arc: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~radius: float,
  ~startAngle: float,
  ~endAngle: float,
  ~counterclockwise: bool=?,
) => unit = "arc"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/ellipse)
*/
@send
external ellipse: (
  WebApiDOM.Types.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~radiusX: float,
  ~radiusY: float,
  ~rotation: float,
  ~startAngle: float,
  ~endAngle: float,
  ~counterclockwise: bool=?,
) => unit = "ellipse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getContextAttributes)
*/
@send
external getContextAttributes: WebApiDOM.Types.canvasRenderingContext2D => Types.canvasRenderingContext2DSettings =
  "getContextAttributes"
