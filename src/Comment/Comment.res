include CharacterData.Impl({type t = DOM.comment})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Comment)
*/
@new
external make: (~data: string=?) => DOM.comment = "Comment"
