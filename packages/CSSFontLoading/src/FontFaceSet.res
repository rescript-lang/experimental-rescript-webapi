include WebApiEvent.EventTarget.Impl({type t = Types.fontFaceSet})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/add)
*/
@send
external add: (Types.fontFaceSet, Types.fontFace) => Types.fontFaceSet = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/delete)
*/
@send
external delete: (Types.fontFaceSet, Types.fontFace) => bool = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/clear)
*/
@send
external clear: Types.fontFaceSet => unit = "clear"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/load)
*/
@send
external load: (
  Types.fontFaceSet,
  ~font: string,
  ~text: string=?,
) => promise<array<Types.fontFace>> = "load"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/check)
*/
@send
external check: (Types.fontFaceSet, ~font: string, ~text: string=?) => bool = "check"
