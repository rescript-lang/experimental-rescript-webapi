external fromString: string => CanvasTypes.fillStyle = "%identity"
external fromCanvasGradient: CanvasTypes.canvasGradient => CanvasTypes.fillStyle = "%identity"
external fromCanvasPattern: CanvasTypes.canvasPattern => CanvasTypes.fillStyle = "%identity"

external toString: CanvasTypes.fillStyle => string = "%identity"

/** Returns a gradient only when the value is a native CanvasGradient in the current realm. */
let toCanvasGradient = (value: CanvasTypes.fillStyle): option<CanvasTypes.canvasGradient> =>
  if CanvasGradient.isInstanceOf(value) {
    Some(Obj.magic(value))
  } else {
    None
  }

/** Returns a pattern only when the value is a native CanvasPattern in the current realm. */
let toCanvasPattern = (value: CanvasTypes.fillStyle): option<CanvasTypes.canvasPattern> =>
  if CanvasPattern.isInstanceOf(value) {
    Some(Obj.magic(value))
  } else {
    None
  }

/**
Represents a decoded version of the abstract `fillStyle` type, used in Context2D.
 */
type decoded =
  | String(string)
  | CanvasGradient(CanvasTypes.canvasGradient)
  | CanvasPattern(CanvasTypes.canvasPattern)

let decode = (t: CanvasTypes.fillStyle): decoded => {
  switch toCanvasGradient(t) {
  | Some(gradient) => CanvasGradient(gradient)
  | None =>
    switch toCanvasPattern(t) {
    | Some(pattern) => CanvasPattern(pattern)
    | None => String(toString(t))
    }
  }
}
