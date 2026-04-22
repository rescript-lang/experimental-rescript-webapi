include CharacterData.Impl({type t = Types.text})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text)
*/
@new
external make: (~data: string=?) => Types.text = "Text"

/**
Splits data at the given offset and returns the remainder as Text node.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Text/splitText)
*/
@send
external splitText: (Types.text, int) => Types.text = "splitText"
