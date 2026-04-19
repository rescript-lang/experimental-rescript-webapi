external toHTMLCanvasElement: null<WebApiDOM.Types.element> => WebApiDOM.Types.htmlCanvasElement =
  "%identity"
@set
external setFillStyle: (
  WebApiDOM.Types.canvasRenderingContext2D,
  WebApiCanvas.Types.fillStyle,
) => unit = "fillStyle"
@get
external getFillStyle: WebApiDOM.Types.canvasRenderingContext2D => WebApiCanvas.Types.fillStyle =
  "fillStyle"
@set
external setFont: (WebApiDOM.Types.canvasRenderingContext2D, string) => unit = "font"
@set
external setTextBaseline: (
  WebApiDOM.Types.canvasRenderingContext2D,
  WebApiCanvas.Types.canvasTextBaseline,
) => unit = "textBaseline"

let myCanvas: WebApiDOM.Types.htmlCanvasElement =
  WebApiDOM.Global.document->WebApiDOM.Document.getElementById("myCanvas")->toHTMLCanvasElement
let ctx = myCanvas->WebApiCanvas.HTMLCanvasElement.getContext2D

ctx->setFillStyle(WebApiCanvas.FillStyle.fromString("red"))
ctx->WebApiCanvas.CanvasRenderingContext2D.fillRect(~x=50., ~y=50., ~w=200., ~h=200.)

ctx->setFillStyle(WebApiCanvas.FillStyle.fromString("black"))
ctx->setFont("2px Tahoma")
ctx->setTextBaseline(WebApiCanvas.Types.Top)
ctx->WebApiCanvas.CanvasRenderingContext2D.fillText(~text="MY TEXT", ~x=60., ~y=60.)

switch ctx->getFillStyle->WebApiCanvas.FillStyle.decode {
| WebApiCanvas.FillStyle.String(color) => Console.log(`Color: ${color}`)
| WebApiCanvas.FillStyle.CanvasGradient(_) => Console.log("CanvasGradient")
| WebApiCanvas.FillStyle.CanvasPattern(_) => Console.log("CanvasPattern")
}

let img: WebApiDOM.Types.htmlImageElement =
  WebApiDOM.Global.document->WebApiDOM.Document.createElement("img")->Obj.magic
ctx->WebApiCanvas.CanvasRenderingContext2D.drawImageWithDimensions(
  ~image=img,
  ~dx=0.,
  ~dy=0.,
  ~dw=200.,
  ~dh=200.,
)
