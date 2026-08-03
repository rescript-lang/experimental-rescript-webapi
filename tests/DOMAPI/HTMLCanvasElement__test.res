external toHTMLCanvasElement: null<DOMTree.element> => HTMLCanvasElement.t = "%identity"
@set
external setFillStyle: (DOM.canvasRenderingContext2D, CanvasTypes.fillStyle) => unit = "fillStyle"
@get
external getFillStyle: DOM.canvasRenderingContext2D => CanvasTypes.fillStyle = "fillStyle"
@set
external setFont: (DOM.canvasRenderingContext2D, string) => unit = "font"
@set
external setTextBaseline: (DOM.canvasRenderingContext2D, CanvasTypes.canvasTextBaseline) => unit =
  "textBaseline"

let myCanvas: HTMLCanvasElement.t =
  DomGlobal.document->Document.getElementById("myCanvas")->toHTMLCanvasElement
let ctx = myCanvas->HTMLCanvasElement.getContext2D

ctx->setFillStyle(FillStyle.fromString("red"))
ctx->CanvasRenderingContext2D.fillRect(~x=50., ~y=50., ~w=200., ~h=200.)

ctx->setFillStyle(FillStyle.fromString("black"))
ctx->setFont("2px Tahoma")
ctx->setTextBaseline(CanvasTypes.Top)
ctx->CanvasRenderingContext2D.fillText(~text="MY TEXT", ~x=60., ~y=60.)

switch ctx->getFillStyle->FillStyle.decode {
| FillStyle.String(color) => Console.log(`Color: ${color}`)
| FillStyle.CanvasGradient(_) => Console.log("CanvasGradient")
| FillStyle.CanvasPattern(_) => Console.log("CanvasPattern")
}

let img: HTMLImageElement.t = DomGlobal.document->Document.createElement("img")->Obj.magic
ctx->CanvasRenderingContext2D.drawImageWithDimensions(
  ~image=img,
  ~dx=0.,
  ~dy=0.,
  ~dw=200.,
  ~dh=200.,
)
