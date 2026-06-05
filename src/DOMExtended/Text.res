type t = DomTypes.text = private {...DomTypes.text}

include CharacterData.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text)
*/
@new
external make: (~data: string=?) => t = "Text"

/**
Splits data at the given offset and returns the remainder as Text node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text/splitText)
*/
@send
external splitText: (t, int) => t = "splitText"
