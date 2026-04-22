include CharacterData.Impl({type t = Types.comment})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Comment)
*/
@new
external make: (~data: string=?) => Types.comment = "Comment"
