open WebAPI.Global

let myDiv = document->Document.querySelector_htmlDivElement("#myDiv")

let myCanvas: option<DOMAPI.htmlCanvasElement> =
  myDiv->Option.flatMap(div => div->HTMLDivElement.querySelector_htmlCanvasElement("#myCanvas"))

myCanvas->Option.forEach(myCanvas => {
  let ctx = myCanvas->HTMLCanvasElement.getContext_2D

  ctx.fillStyle = FillStyle.fromString("red")
  ctx->CanvasRenderingContext2D.fillRect(~x=50., ~y=50., ~w=200., ~h=200.)

  ctx.fillStyle = FillStyle.fromString("black")
  ctx.font = "2px Tahoma"
  ctx.textBaseline = CanvasAPI.Top
  ctx->CanvasRenderingContext2D.fillText(~text="MY TEXT", ~x=60., ~y=60.)

  switch ctx.fillStyle->FillStyle.decode {
  | FillStyle.String(color) => Console.log(`Color: ${color}`)
  | FillStyle.CanvasGradient(_) => Console.log("CanvasGradient")
  | FillStyle.CanvasPattern(_) => Console.log("CanvasPattern")
  }
})
