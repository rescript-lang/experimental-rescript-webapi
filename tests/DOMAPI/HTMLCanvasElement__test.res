external toHTMLCanvasElement: null<WebApi.DOM.Types.element> => WebApi.DOM.Types.htmlCanvasElement =
  "%identity"
@set
external setFillStyle: (
  WebApi.DOM.Types.canvasRenderingContext2D,
  WebApi.Canvas.Types.fillStyle,
) => unit = "fillStyle"
@get
external getFillStyle: WebApi.DOM.Types.canvasRenderingContext2D => WebApi.Canvas.Types.fillStyle =
  "fillStyle"
@set
external setFont: (WebApi.DOM.Types.canvasRenderingContext2D, string) => unit = "font"
@set
external setTextBaseline: (
  WebApi.DOM.Types.canvasRenderingContext2D,
  WebApi.Canvas.Types.canvasTextBaseline,
) => unit = "textBaseline"

let myCanvas: WebApi.DOM.Types.htmlCanvasElement =
  WebApi.DOM.Global.document->WebApi.DOM.Document.getElementById("myCanvas")->toHTMLCanvasElement
let ctx = myCanvas->WebApi.Canvas.HTMLCanvasElement.getContext2D

ctx->setFillStyle(WebApi.Canvas.FillStyle.fromString("red"))
ctx->WebApi.Canvas.CanvasRenderingContext2D.fillRect(~x=50., ~y=50., ~w=200., ~h=200.)

ctx->setFillStyle(WebApi.Canvas.FillStyle.fromString("black"))
ctx->setFont("2px Tahoma")
ctx->setTextBaseline(WebApi.Canvas.Types.Top)
ctx->WebApi.Canvas.CanvasRenderingContext2D.fillText(~text="MY TEXT", ~x=60., ~y=60.)

switch ctx->getFillStyle->WebApi.Canvas.FillStyle.decode {
| WebApi.Canvas.FillStyle.String(color) => Console.log(`Color: ${color}`)
| WebApi.Canvas.FillStyle.CanvasGradient(_) => Console.log("CanvasGradient")
| WebApi.Canvas.FillStyle.CanvasPattern(_) => Console.log("CanvasPattern")
}

let img: WebApi.DOM.Types.htmlImageElement =
  WebApi.DOM.Global.document->WebApi.DOM.Document.createElement("img")->Obj.magic
ctx->WebApi.Canvas.CanvasRenderingContext2D.drawImageWithDimensions(
  ~image=img,
  ~dx=0.,
  ~dy=0.,
  ~dw=200.,
  ~dh=200.,
)
