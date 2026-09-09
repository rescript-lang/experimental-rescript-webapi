/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/save)
*/
@send
external save: DOM.canvasRenderingContext2D => unit = "save"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/restore)
*/
@send
external restore: DOM.canvasRenderingContext2D => unit = "restore"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/reset)
*/
@send
external reset: DOM.canvasRenderingContext2D => unit = "reset"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isContextLost)
*/
@send
external isContextLost: DOM.canvasRenderingContext2D => bool = "isContextLost"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/scale)
*/
@send
external scale: (DOM.canvasRenderingContext2D, ~x: float, ~y: float) => unit = "scale"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/rotate)
*/
@send
external rotate: (DOM.canvasRenderingContext2D, float) => unit = "rotate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/translate)
*/
@send
external translate: (DOM.canvasRenderingContext2D, ~x: float, ~y: float) => unit = "translate"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/transform)
*/
@send
external transform: (
  DOM.canvasRenderingContext2D,
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
external getTransform: DOM.canvasRenderingContext2D => DOM.domMatrix = "getTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/setTransform)
*/
@send
external setTransform: (
  DOM.canvasRenderingContext2D,
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
@throws(JsExn) @send
external setTransform2: (DOM.canvasRenderingContext2D, ~transform: DOM.domMatrix2DInit=?) => unit =
  "setTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/resetTransform)
*/
@send
external resetTransform: DOM.canvasRenderingContext2D => unit = "resetTransform"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createLinearGradient)
*/
@throws(JsExn) @send
external createLinearGradient: (
  DOM.canvasRenderingContext2D,
  ~x0: float,
  ~y0: float,
  ~x1: float,
  ~y1: float,
) => CanvasTypes.canvasGradient = "createLinearGradient"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createRadialGradient)
*/
@throws(JsExn) @send
external createRadialGradient: (
  DOM.canvasRenderingContext2D,
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
  DOM.canvasRenderingContext2D,
  ~startAngle: float,
  ~x: float,
  ~y: float,
) => CanvasTypes.canvasGradient = "createConicGradient"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@throws(JsExn) @send
external createPattern: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLImageElement.t,
  ~repetition: string,
) => Null.t<CanvasTypes.canvasPattern> = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@throws(JsExn) @send
external createPattern2: (
  DOM.canvasRenderingContext2D,
  ~image: SVGElement.svgImageElement,
  ~repetition: string,
) => Null.t<CanvasTypes.canvasPattern> = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@throws(JsExn) @send
external createPattern3: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLVideoElement.t,
  ~repetition: string,
) => Null.t<CanvasTypes.canvasPattern> = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@throws(JsExn) @send
external createPattern4: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLCanvasElement.t,
  ~repetition: string,
) => Null.t<CanvasTypes.canvasPattern> = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@throws(JsExn) @send
external createPattern5: (
  DOM.canvasRenderingContext2D,
  ~image: CanvasTypes.imageBitmap,
  ~repetition: string,
) => Null.t<CanvasTypes.canvasPattern> = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@throws(JsExn) @send
external createPattern6: (
  DOM.canvasRenderingContext2D,
  ~image: CanvasTypes.offscreenCanvas,
  ~repetition: string,
) => Null.t<CanvasTypes.canvasPattern> = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createPattern)
*/
@throws(JsExn) @send
external createPattern7: (
  DOM.canvasRenderingContext2D,
  ~image: DOM.videoFrame,
  ~repetition: string,
) => Null.t<CanvasTypes.canvasPattern> = "createPattern"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clearRect)
*/
@send
external clearRect: (
  DOM.canvasRenderingContext2D,
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
  DOM.canvasRenderingContext2D,
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
  DOM.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
) => unit = "strokeRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/beginPath)
*/
@send
external beginPath: DOM.canvasRenderingContext2D => unit = "beginPath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fill)
*/
@send
external fill: (DOM.canvasRenderingContext2D, ~fillRule: CanvasTypes.canvasFillRule=?) => unit =
  "fill"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fill)
*/
@send
external fill2: (
  DOM.canvasRenderingContext2D,
  ~path: CanvasTypes.path2D,
  ~fillRule: CanvasTypes.canvasFillRule=?,
) => unit = "fill"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/stroke)
*/
@send
external stroke: DOM.canvasRenderingContext2D => unit = "stroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/stroke)
*/
@send
external stroke2: (DOM.canvasRenderingContext2D, CanvasTypes.path2D) => unit = "stroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clip)
*/
@send
external clip: (DOM.canvasRenderingContext2D, ~fillRule: CanvasTypes.canvasFillRule=?) => unit =
  "clip"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/clip)
*/
@send
external clip2: (
  DOM.canvasRenderingContext2D,
  ~path: CanvasTypes.path2D,
  ~fillRule: CanvasTypes.canvasFillRule=?,
) => unit = "clip"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInPath)
*/
@send
external isPointInPath: (
  DOM.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~fillRule: CanvasTypes.canvasFillRule=?,
) => bool = "isPointInPath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInPath)
*/
@send
external isPointInPath2: (
  DOM.canvasRenderingContext2D,
  ~path: CanvasTypes.path2D,
  ~x: float,
  ~y: float,
  ~fillRule: CanvasTypes.canvasFillRule=?,
) => bool = "isPointInPath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInStroke)
*/
@send
external isPointInStroke: (DOM.canvasRenderingContext2D, ~x: float, ~y: float) => bool =
  "isPointInStroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/isPointInStroke)
*/
@send
external isPointInStroke2: (
  DOM.canvasRenderingContext2D,
  ~path: CanvasTypes.path2D,
  ~x: float,
  ~y: float,
) => bool = "isPointInStroke"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawFocusIfNeeded)
*/
@send
external drawFocusIfNeeded: (DOM.canvasRenderingContext2D, DOMTree.element) => unit =
  "drawFocusIfNeeded"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawFocusIfNeeded)
*/
@send
external drawFocusIfNeeded2: (
  DOM.canvasRenderingContext2D,
  ~path: CanvasTypes.path2D,
  ~element: DOMTree.element,
) => unit = "drawFocusIfNeeded"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/fillText)
*/
@send
external fillText: (
  DOM.canvasRenderingContext2D,
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
  DOM.canvasRenderingContext2D,
  ~text: string,
  ~x: float,
  ~y: float,
  ~maxWidth: float=?,
) => unit = "strokeText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/measureText)
*/
@send
external measureText: (DOM.canvasRenderingContext2D, string) => CanvasTypes.textMetrics =
  "measureText"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImage: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLImageElement.t,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithSvg: (
  DOM.canvasRenderingContext2D,
  ~image: SVGElement.svgImageElement,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithVideo: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLVideoElement.t,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithCanvas: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLCanvasElement.t,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithImageBitmap: (
  DOM.canvasRenderingContext2D,
  ~image: CanvasTypes.imageBitmap,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithOffscreenCanvas: (
  DOM.canvasRenderingContext2D,
  ~image: CanvasTypes.offscreenCanvas,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithVideoFrame: (
  DOM.canvasRenderingContext2D,
  ~image: DOM.videoFrame,
  ~dx: float,
  ~dy: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithDimensions: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLImageElement.t,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithSvgDimensions: (
  DOM.canvasRenderingContext2D,
  ~image: SVGElement.svgImageElement,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithVideoDimensions: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLVideoElement.t,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithCanvasDimensions: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLCanvasElement.t,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithImageBitmapDimensions: (
  DOM.canvasRenderingContext2D,
  ~image: CanvasTypes.imageBitmap,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithOffscreenCanvasDimensions: (
  DOM.canvasRenderingContext2D,
  ~image: CanvasTypes.offscreenCanvas,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithVideoFrameDimensions: (
  DOM.canvasRenderingContext2D,
  ~image: DOM.videoFrame,
  ~dx: float,
  ~dy: float,
  ~dw: float,
  ~dh: float,
) => unit = "drawImage"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/drawImage)
*/
@throws(JsExn) @send
external drawImageWithSubRectangle: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLImageElement.t,
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
@throws(JsExn) @send
external drawImageWithSvgSubRectangle: (
  DOM.canvasRenderingContext2D,
  ~image: SVGElement.svgImageElement,
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
@throws(JsExn) @send
external drawImageWithVideoSubRectangle: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLVideoElement.t,
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
@throws(JsExn) @send
external drawImageWithCanvasSubRectangle: (
  DOM.canvasRenderingContext2D,
  ~image: HTMLCanvasElement.t,
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
@throws(JsExn) @send
external drawImageWithImageBitmapSubRectangle: (
  DOM.canvasRenderingContext2D,
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
@throws(JsExn) @send
external drawImageWithOffscreenCanvasSubRectangle: (
  DOM.canvasRenderingContext2D,
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
@throws(JsExn) @send
external drawImageWithVideoFrameSubRectangle: (
  DOM.canvasRenderingContext2D,
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
@throws(JsExn) @send
external createImageData: (
  DOM.canvasRenderingContext2D,
  ~sw: int,
  ~sh: int,
  ~settings: DOM.imageDataSettings=?,
) => DOM.imageData = "createImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/createImageData)
*/
@throws(JsExn) @send
external createImageData2: (DOM.canvasRenderingContext2D, DOM.imageData) => DOM.imageData =
  "createImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getImageData)
*/
@throws(JsExn) @send
external getImageData: (
  DOM.canvasRenderingContext2D,
  ~sx: int,
  ~sy: int,
  ~sw: int,
  ~sh: int,
  ~settings: DOM.imageDataSettings=?,
) => DOM.imageData = "getImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/putImageData)
*/
@throws(JsExn) @send
external putImageData: (
  DOM.canvasRenderingContext2D,
  ~imagedata: DOM.imageData,
  ~dx: int,
  ~dy: int,
) => unit = "putImageData"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/putImageData)
*/
@throws(JsExn) @send
external putImageData2: (
  DOM.canvasRenderingContext2D,
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
external setLineDash: (DOM.canvasRenderingContext2D, array<float>) => unit = "setLineDash"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/getLineDash)
*/
@send
external getLineDash: DOM.canvasRenderingContext2D => array<float> = "getLineDash"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/closePath)
*/
@send
external closePath: DOM.canvasRenderingContext2D => unit = "closePath"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/moveTo)
*/
@send
external moveTo: (DOM.canvasRenderingContext2D, ~x: float, ~y: float) => unit = "moveTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/lineTo)
*/
@send
external lineTo: (DOM.canvasRenderingContext2D, ~x: float, ~y: float) => unit = "lineTo"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/quadraticCurveTo)
*/
@send
external quadraticCurveTo: (
  DOM.canvasRenderingContext2D,
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
  DOM.canvasRenderingContext2D,
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
@throws(JsExn) @send
external arcTo: (
  DOM.canvasRenderingContext2D,
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
external rect: (DOM.canvasRenderingContext2D, ~x: float, ~y: float, ~w: float, ~h: float) => unit =
  "rect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
*/
@throws(JsExn) @send
external roundRect: (
  DOM.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
  ~radii_: array<float>=?,
) => unit = "roundRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
*/
@throws(JsExn) @send
external roundRect2: (
  DOM.canvasRenderingContext2D,
  ~x: float,
  ~y: float,
  ~w: float,
  ~h: float,
  ~radii_: array<float>=?,
) => unit = "roundRect"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D/roundRect)
*/
@throws(JsExn) @send
external roundRect3: (
  DOM.canvasRenderingContext2D,
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
  DOM.canvasRenderingContext2D,
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
  DOM.canvasRenderingContext2D,
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
external getContextAttributes: DOM.canvasRenderingContext2D => CanvasTypes.canvasRenderingContext2DSettings =
  "getContextAttributes"
