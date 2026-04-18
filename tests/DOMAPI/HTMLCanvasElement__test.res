let myCanvas: HTMLCanvasElement.t =
  Window.current.document->Document.getElementById("myCanvas")->Prelude.unsafeConversation
let ctx = myCanvas->HTMLCanvasElement.getContext2D

ctx.fillStyle = FillStyle.fromString("red")
ctx->CanvasRenderingContext2D.fillRect(~x=50., ~y=50., ~w=200., ~h=200.)

ctx.fillStyle = FillStyle.fromString("black")
ctx.font = "2px Tahoma"
ctx.textBaseline = CanvasTypes.Top
ctx->CanvasRenderingContext2D.fillText(~text="MY TEXT", ~x=60., ~y=60.)

switch ctx.fillStyle->FillStyle.decode {
| FillStyle.String(color) => Console.log(`Color: ${color}`)
| FillStyle.CanvasGradient(_) => Console.log("CanvasGradient")
| FillStyle.CanvasPattern(_) => Console.log("CanvasPattern")
}

let img: HTMLImageElement.t = Window.current.document->Document.createElement("img")->Obj.magic
ctx->CanvasRenderingContext2D.drawImageWithDimensions(
  ~image=img,
  ~dx=0.,
  ~dy=0.,
  ~dw=200.,
  ~dh=200.,
)
