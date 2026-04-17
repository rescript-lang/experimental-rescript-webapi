open Prelude
open CanvasAPI

external fromString: string => fillStyle = "%identity"
external fromCanvasGradient: canvasGradient => fillStyle = "%identity"
external fromCanvasPattern: canvasGradient => fillStyle = "%identity"

external toString: fillStyle => string = "%identity"
external toCanvasGradient: fillStyle => canvasGradient = "%identity"
external toCanvasPattern: fillStyle => canvasPattern = "%identity"

/**
Represents a decoded version of the abstract `fillStyle` type, used in Context2D.
 */
type decoded =
  | String(string)
  | CanvasGradient(canvasGradient)
  | CanvasPattern(canvasPattern)

let decode = (t: fillStyle): decoded => {
  if CanvasGradient.isInstanceOf(t) {
    CanvasGradient(toCanvasGradient(t))
  } else if CanvasPattern.isInstanceOf(t) {
    CanvasPattern(toCanvasPattern(t))
  } else {
    String(toString(t))
  }
}
