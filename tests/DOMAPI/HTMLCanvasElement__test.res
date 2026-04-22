external toHTMLCanvasElement: null<DOM.Types.element> => DOM.Types.htmlCanvasElement = "%identity"
@set
external setFillStyle: (DOM.Types.canvasRenderingContext2D, Canvas.Types.fillStyle) => unit =
  "fillStyle"
@get
external getFillStyle: DOM.Types.canvasRenderingContext2D => Canvas.Types.fillStyle = "fillStyle"
@set
external setFont: (DOM.Types.canvasRenderingContext2D, string) => unit = "font"
@set
external setTextBaseline: (
  DOM.Types.canvasRenderingContext2D,
  Canvas.Types.canvasTextBaseline,
) => unit = "textBaseline"

let myCanvas: DOM.Types.htmlCanvasElement =
  DOM.Global.document->DOM.Document.getElementById("myCanvas")->toHTMLCanvasElement
let ctx = myCanvas->Canvas.HTMLCanvasElement.getContext2D

ctx->setFillStyle(Canvas.FillStyle.fromString("red"))
ctx->Canvas.CanvasRenderingContext2D.fillRect(~x=50., ~y=50., ~w=200., ~h=200.)

ctx->setFillStyle(Canvas.FillStyle.fromString("black"))
ctx->setFont("2px Tahoma")
ctx->setTextBaseline(Canvas.Types.Top)
ctx->Canvas.CanvasRenderingContext2D.fillText(~text="MY TEXT", ~x=60., ~y=60.)

switch ctx->getFillStyle->Canvas.FillStyle.decode {
| Canvas.FillStyle.String(color) => Console.log(`Color: ${color}`)
| Canvas.FillStyle.CanvasGradient(_) => Console.log("CanvasGradient")
| Canvas.FillStyle.CanvasPattern(_) => Console.log("CanvasPattern")
}

let img: DOM.Types.htmlImageElement =
  DOM.Global.document->DOM.Document.createElement("img")->Obj.magic
ctx->Canvas.CanvasRenderingContext2D.drawImageWithDimensions(
  ~image=img,
  ~dx=0.,
  ~dy=0.,
  ~dw=200.,
  ~dh=200.,
)
