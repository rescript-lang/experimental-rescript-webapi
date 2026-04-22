external fromString: string => Types.fillStyle = "%identity"
external fromCanvasGradient: Types.canvasGradient => Types.fillStyle = "%identity"
external fromCanvasPattern: Types.canvasPattern => Types.fillStyle = "%identity"

external toString: Types.fillStyle => string = "%identity"
external toCanvasGradient: Types.fillStyle => Types.canvasGradient = "%identity"
external toCanvasPattern: Types.fillStyle => Types.canvasPattern = "%identity"

/**
Represents a decoded version of the abstract `fillStyle` type, used in Context2D.
 */
type decoded =
  | String(string)
  | CanvasGradient(Types.canvasGradient)
  | CanvasPattern(Types.canvasPattern)

let decode = (t: Types.fillStyle): decoded => {
  if CanvasGradient.isInstanceOf(t) {
    CanvasGradient(toCanvasGradient(t))
  } else if CanvasPattern.isInstanceOf(t) {
    CanvasPattern(toCanvasPattern(t))
  } else {
    String(toString(t))
  }
}
