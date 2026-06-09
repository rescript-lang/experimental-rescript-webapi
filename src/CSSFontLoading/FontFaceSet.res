type t = CssFontLoadingTypes.fontFaceSet

include EventTarget.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/add)
*/
@send
external add: (
  t,
  FontFace.t,
) => t = "add"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/delete)
*/
@send
external delete: (t, FontFace.t) => bool = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/clear)
*/
@send
external clear: t => unit = "clear"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/load)
*/
@send
external load: (
  t,
  ~font: string,
  ~text: string=?,
) => promise<array<FontFace.t>> = "load"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/FontFaceSet/check)
*/
@send
external check: (t, ~font: string, ~text: string=?) => bool = "check"
