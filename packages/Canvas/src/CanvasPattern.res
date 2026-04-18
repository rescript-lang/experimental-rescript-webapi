type domMatrix2DInit = WebApiDOM.Types.domMatrix2DInit

/**
Sets the transformation matrix that will be used when rendering the pattern during a fill or stroke painting operation.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CanvasPattern/setTransform)
*/
@send
external setTransform: (Types.canvasPattern, ~transform: domMatrix2DInit=?) => unit =
  "setTransform"

let isInstanceOf = (_: 't): bool => %raw(`param instanceof CanvasPattern`)
