// Generated by ReScript, PLEASE EDIT WITH CARE

import * as FillStyle$WebAPI from "../../src/DOMAPI/FillStyle.js";

let myCanvas = document.getElementById("myCanvas");

let ctx = myCanvas.getContext("2d");

ctx.fillStyle = "red";

ctx.fillRect(50, 50, 200, 200);

ctx.fillStyle = "black";

ctx.font = "2px Tahoma";

ctx.textBaseline = "top";

ctx.fillText("MY TEXT", 60, 60);

let color = FillStyle$WebAPI.decode(ctx.fillStyle);

switch (color.TAG) {
  case "String" :
    console.log("Color: " + color._0);
    break;
  case "CanvasGradient" :
    console.log("CanvasGradient");
    break;
  case "CanvasPattern" :
    console.log("CanvasPattern");
    break;
}

export {
  myCanvas,
  ctx,
}
/* myCanvas Not a pure module */