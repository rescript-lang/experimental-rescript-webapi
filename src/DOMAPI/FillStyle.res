open Prelude
open CanvasAPI
open DOMAPI

external fromString: string => fillStyle = "%identity"
external fromCanvasGradient: canvasGradient => fillStyle = "%identity"
external fromCanvasPattern: canvasGradient => fillStyle = "%identity"

type decoded =
  | String(string)
  | CanvasGradient(canvasGradient)
  | CanvasPattern(canvasPattern)

let decode = (t: fillStyle): decoded => {
  if CanvasGradient.isInstanceOf(t) {
    CanvasGradient(unsafeConversation(t))
  } else if CanvasPattern.isInstanceOf(t) {
    CanvasPattern(unsafeConversation(t))
  } else {
    String(unsafeConversation(t))
  }
}