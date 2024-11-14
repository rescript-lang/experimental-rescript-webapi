open WebAPI.Global

let myCanvas: DOMAPI.htmlCanvasElement =
  document->Document.getElementById("myCanvas")->Prelude.unsafeConversation
let ctx = myCanvas->HTMLCanvasElement.getContext_2D

ctx.fillStyle = Prelude.unsafeConversation("red")
ctx->CanvasRenderingContext2D.fillRect(~x=50., ~y=50., ~w=200., ~h=200.)

ctx.fillStyle = Prelude.unsafeConversation("black")
ctx.font = "2px Tahoma"
ctx.textBaseline = CanvasAPI.Top
ctx->CanvasRenderingContext2D.fillText(~text="MY TEXT", ~x=60., ~y=60.)
