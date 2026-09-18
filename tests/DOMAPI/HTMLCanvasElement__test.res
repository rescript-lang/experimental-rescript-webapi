let draw = (ctx: DOM.canvasRenderingContext2D) => {
  ctx->CanvasRenderingContext2D.setFillStyle(FillStyle.fromString("red"))
  ctx->CanvasRenderingContext2D.fillRect(~x=50., ~y=50., ~w=200., ~h=200.)

  ctx->CanvasRenderingContext2D.setFillStyle(FillStyle.fromString("black"))
  ctx->CanvasRenderingContext2D.setFont("2px Tahoma")
  ctx->CanvasRenderingContext2D.setTextBaseline(CanvasTypes.Top)
  ctx->CanvasRenderingContext2D.fillText(~text="MY TEXT", ~x=60., ~y=60.)

  switch ctx->CanvasRenderingContext2D.getFillStyle->FillStyle.decode {
  | FillStyle.String(color) => Console.log(`Color: ${color}`)
  | FillStyle.CanvasGradient(_) => Console.log("CanvasGradient")
  | FillStyle.CanvasPattern(_) => Console.log("CanvasPattern")
  }

  DomGlobal.document
  ->Document.createElement("img")
  ->HTMLImageElement.classify
  ->Option.forEach(image =>
    ctx->CanvasRenderingContext2D.drawImageWithDimensions(
      ~image,
      ~dx=0.,
      ~dy=0.,
      ~dw=200.,
      ~dh=200.,
    )
  )
}

DomGlobal.document
->Document.getElementById("myCanvas")
->Null.toOption
->Option.flatMap(element => element->HTMLCanvasElement.classify)
->Option.forEach(canvas =>
  canvas->HTMLCanvasElement.getContext2D->Null.toOption->Option.forEach(draw)
)
