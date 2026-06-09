type t = DOM.canvasRenderingContext2D = private {...DOM.canvasRenderingContext2D}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/save)
*/
@send
external save: t => unit = "save"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/restore)
*/
@send
external restore: t => unit = "restore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/reset)
*/
@send
external reset: t => unit = "reset"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isContextLost)
*/
@send
external isContextLost: t => bool = "isContextLost"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/scale)
*/
@send
external scale: (t, ~x: float, ~y: float) => unit = "scale"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/rotate)
*/
@send
external rotate: (t, float) => unit = "rotate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/translate)
*/
@send
external translate: (t, ~x: float, ~y: float) => unit = "translate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/transform)
*/
@send
external transform: (t, ~a: float, ~b: float, ~c: float, ~d: float, ~e: float, ~f: float) => unit =
  "transform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getTransform)
*/
@send
external getTransform: t => DOMMatrix.t = "getTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/setTransform)
*/
@send
external setTransform: (
  t,
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
external setTransform2: (t, ~transform: GeometryTypes.domMatrix2DInit=?) => unit = "setTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/resetTransform)
*/
@send
external resetTransform: t => unit = "resetTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createLinearGradient)
*/
@send
external createLinearGradient: (
  t,
  ~x0: float,
  ~y0: float,
  ~x1: float,
  ~y1: float,
) => CanvasTypes.canvasGradient = "createLinearGradient"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createRadialGradient)
*/
@send
external createRadialGradient: (
  t,
  ~x0: float,
  ~y0: float,
  ~r0: float,
  ~x1: float,
  ~y1: float,
  ~r1: float,
) => CanvasTypes.canvasGradient = "createRadialGradient"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createConicGradient)
*/
@send
external createConicGradient: (
  t,
  ~startAngle: float,
  ~x: float,
  ~y: float,
) => CanvasTypes.canvasGradient = "createConicGradient"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern: (
  t,
  ~image: DOM.htmlImageElement,
  ~repetition: string,
) => CanvasTypes.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern2: (
  t,
  ~image: DOM.svgImageElement,
  ~repetition: string,
) => CanvasTypes.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern3: (
  t,
  ~image: DOM.htmlVideoElement,
  ~repetition: string,
) => CanvasTypes.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern4: (
  t,
  ~image: DOM.htmlCanvasElement,
  ~repetition: string,
) => CanvasTypes.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern5: (
  t,
  ~image: CanvasTypes.imageBitmap,
  ~repetition: string,
) => CanvasTypes.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern6: (
  t,
  ~image: CanvasTypes.offscreenCanvas,
  ~repetition: string,
) => CanvasTypes.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@send
external createPattern7: (
  t,
  ~image: DOM.videoFrame,
  ~repetition: string,
) => CanvasTypes.canvasPattern = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clearRect)
*/
@send
external clearRect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "clearRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fillRect)
*/
@send
external fillRect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "fillRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/strokeRect)
*/
@send
external strokeRect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "strokeRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/beginPath)
*/
@send
external beginPath: t => unit = "beginPath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fill)
*/
@send
external fill: (t, ~fillRule: CanvasTypes.canvasFillRule=?) => unit = "fill"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fill)
*/
@send
external fill2: (t, ~path: CanvasTypes.path2D, ~fillRule: CanvasTypes.canvasFillRule=?) => unit =
  "fill"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/stroke)
*/
@send
external stroke: t => unit = "stroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/stroke)
*/
@send
external stroke2: (t, CanvasTypes.path2D) => unit = "stroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clip)
*/
@send
external clip: (t, ~fillRule: CanvasTypes.canvasFillRule=?) => unit = "clip"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clip)
*/
@send
external clip2: (t, ~path: CanvasTypes.path2D, ~fillRule: CanvasTypes.canvasFillRule=?) => unit =
  "clip"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInPath)
*/
@send
external isPointInPath: (t, ~x: float, ~y: float, ~fillRule: CanvasTypes.canvasFillRule=?) => bool =
  "isPointInPath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInPath)
*/
@send
external isPointInPath2: (
  t,
  ~path: CanvasTypes.path2D,
  ~x: float,
  ~y: float,
  ~fillRule: CanvasTypes.canvasFillRule=?,
) => bool = "isPointInPath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInStroke)
*/
@send
external isPointInStroke: (t, ~x: float, ~y: float) => bool = "isPointInStroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInStroke)
*/
@send
external isPointInStroke2: (t, ~path: CanvasTypes.path2D, ~x: float, ~y: float) => bool =
  "isPointInStroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawFocusIfNeeded)
*/
@send
external drawFocusIfNeeded: (t, Element.t) => unit = "drawFocusIfNeeded"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawFocusIfNeeded)
*/
@send
external drawFocusIfNeeded2: (t, ~path: CanvasTypes.path2D, ~element: Element.t) => unit =
  "drawFocusIfNeeded"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fillText)
*/
@send
external fillText: (t, ~text: string, ~x: float, ~y: float, ~maxWidth: float=?) => unit = "fillText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/strokeText)
*/
@send
external strokeText: (t, ~text: string, ~x: float, ~y: float, ~maxWidth: float=?) => unit =
  "strokeText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/measureText)
*/
@send
external measureText: (t, string) => CanvasTypes.textMetrics = "measureText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImage: (t, ~image: DOM.htmlImageElement, ~dx: float, ~dy: float) => unit =
  "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithSvg: (t, ~image: DOM.svgImageElement, ~dx: float, ~dy: float) => unit =
  "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithVideo: (
  t,
  ~image: DOM.htmlVideoElement,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithCanvas: (
  t,
  ~image: DOM.htmlCanvasElement,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithImageBitmap: (
  t,
  ~image: CanvasTypes.imageBitmap,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithOffscreenCanvas: (
  t,
  ~image: CanvasTypes.offscreenCanvas,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithVideoFrame: (t, ~image: DOM.videoFrame, ~dx: float, ~dy: float) => unit =
  "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@send
external drawImageWithDimensions: (
  t,
  ~image: DOM.htmlImageElement,
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
  t,
  ~image: DOM.svgImageElement,
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
  t,
  ~image: DOM.htmlVideoElement,
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
  t,
  ~image: DOM.htmlCanvasElement,
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
  t,
  ~image: CanvasTypes.imageBitmap,
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
  t,
  ~image: CanvasTypes.offscreenCanvas,
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
  t,
  ~image: DOM.videoFrame,
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
  t,
  ~image: DOM.htmlImageElement,
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
  t,
  ~image: DOM.svgImageElement,
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
  t,
  ~image: DOM.htmlVideoElement,
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
  t,
  ~image: DOM.htmlCanvasElement,
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
  t,
  ~image: CanvasTypes.imageBitmap,
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
  t,
  ~image: CanvasTypes.offscreenCanvas,
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
  t,
  ~image: DOM.videoFrame,
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
  t,
  ~sw: int,
  ~sh: int,
  ~settings: DOM.imageDataSettings=?,
) => DOM.imageData = "createImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createImageData)
*/
@send
external createImageData2: (t, DOM.imageData) => DOM.imageData = "createImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getImageData)
*/
@send
external getImageData: (
  t,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~settings: DOM.imageDataSettings=?,
) => DOM.imageData = "getImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/putImageData)
*/
@send
external putImageData: (t, ~imagedata: DOM.imageData, ~dx: int, ~dy: int) => unit =
  "putImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/putImageData)
*/
@send
external putImageData2: (
  t,
  ~imagedata: DOM.imageData,
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
external setLineDash: (t, array<float>) => unit = "setLineDash"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getLineDash)
*/
@send
external getLineDash: t => array<float> = "getLineDash"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/closePath)
*/
@send
external closePath: t => unit = "closePath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/moveTo)
*/
@send
external moveTo: (t, ~x: float, ~y: float) => unit = "moveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineTo)
*/
@send
external lineTo: (t, ~x: float, ~y: float) => unit = "lineTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/quadraticCurveTo)
*/
@send
external quadraticCurveTo: (t, ~cpx: float, ~cpy: float, ~x: float, ~y: float) => unit =
  "quadraticCurveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/bezierCurveTo)
*/
@send
external bezierCurveTo: (
  t,
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
external arcTo: (t, ~x1: float, ~y1: float, ~x2: float, ~y2: float, ~radius: float) => unit =
  "arcTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/rect)
*/
@send
external rect: (t, ~x: float, ~y: float, ~w: float, ~h: float) => unit = "rect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
*/
@send
external roundRect: (
  t,
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
  t,
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
  t,
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
  t,
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
  t,
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
external getContextAttributes: t => CanvasTypes.canvasRenderingContext2DSettings =
  "getContextAttributes"
