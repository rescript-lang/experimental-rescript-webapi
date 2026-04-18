open Prelude

module Types = CanvasTypes

type t = Types.fillStyle
type canvasGradient = Types.canvasGradient
type canvasPattern = Types.canvasPattern

external fromString: string => t = "%identity"
external fromCanvasGradient: canvasGradient => t = "%identity"
external fromCanvasPattern: canvasPattern => t = "%identity"

/**
Represents a decoded version of the abstract `fillStyle` type, used in Context2D.
 */
type decoded =
  | String(string)
  | CanvasGradient(canvasGradient)
  | CanvasPattern(canvasPattern)

let decode = (value: t): decoded => {
  if CanvasGradient.isInstanceOf(value) {
    CanvasGradient(unsafeConversation(value))
  } else if CanvasPattern.isInstanceOf(value) {
    CanvasPattern(unsafeConversation(value))
  } else {
    String(unsafeConversation(value))
  }
}
