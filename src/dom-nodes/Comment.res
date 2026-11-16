/**
Textual notations within markup; although it is generally not visually shown, such comments are available to be read in the source view.
[See Comment on MDN](https://developer.mozilla.org/docs/Web/API/Comment)
*/
type t = private {
  ...CharacterData.t,
}

include CharacterData.Impl({type t = t})

external asEventTarget: t => DOM.eventTarget = "%identity"
external asNode: t => DOMTree.node = "%identity"
external asCharacterData: t => CharacterData.t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Comment)
*/
@new
external make: (~data: string=?) => t = "Comment"
