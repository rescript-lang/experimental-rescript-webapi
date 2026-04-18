module Types = CSSFontLoadingTypes

type t = Types.fontFaceSet = {...Types.fontFaceSet}
type fontFace = Types.fontFace = {...Types.fontFace}
type fontFaceSetLoadStatus = Types.fontFaceSetLoadStatus

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/add)
*/
@send
external add: (t, fontFace) => t = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/delete)
*/
@send
external delete: (t, fontFace) => bool = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/clear)
*/
@send
external clear: t => unit = "clear"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/load)
*/
@send
external load: (t, ~font: string, ~text: string=?) => promise<array<fontFace>> = "load"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/check)
*/
@send
external check: (t, ~font: string, ~text: string=?) => bool = "check"
