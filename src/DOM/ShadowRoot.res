type t = DOMTree.shadowRoot = private {
  ...DOMTree.shadowRoot,
}

include DocumentFragment.Impl({type t = t})

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getAnimations)
*/
@send
external getAnimations: DOMTree.shadowRoot => array<Animation.t> = "getAnimations"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/setHTMLUnsafe)
*/
@send
external setHTMLUnsafe: (DOMTree.shadowRoot, string) => unit = "setHTMLUnsafe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/getHTML)
*/
@send
external getHTML: (DOMTree.shadowRoot, ~options: HTML.getHTMLOptions=?) => string = "getHTML"
