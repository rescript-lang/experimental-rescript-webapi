type t = Base__ShadowRoot.t

include DocumentFragment.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getAnimations)
*/
@send
external getAnimations: t => array<Animation.t> = "getAnimations"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/setHTMLUnsafe)
*/
@send
external setHTMLUnsafe: (t, string) => unit = "setHTMLUnsafe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/getHTML)
*/
@send
external getHTML: (t, ~options: DOM.getHTMLOptions=?) => string = "getHTML"
