type t = DOMTree.shadowRoot = private {
  ...DOMTree.shadowRoot,
}

include DocumentFragment.Impl({type t = t})

/**
Sets the serialized HTML contents of this shadow root.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/innerHTML)
*/
@throws(JsExn) @set
external setInnerHTML: (t, string) => unit = "innerHTML"

/**
Sets the adopted style sheets for this shadow root.
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/adoptedStyleSheets)
*/
@throws(JsExn) @set
external setAdoptedStyleSheets: (t, array<StyleSheet.cssStyleSheet>) => unit = "adoptedStyleSheets"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/Document/getAnimations)
*/
@send
external getAnimations: DOMTree.shadowRoot => array<Animation.t> = "getAnimations"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/setHTMLUnsafe)
*/
@throws(JsExn) @send
external setHTMLUnsafe: (DOMTree.shadowRoot, string) => unit = "setHTMLUnsafe"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/ShadowRoot/getHTML)
*/
@send
external getHTML: (DOMTree.shadowRoot, ~options: HTML.getHTMLOptions=?) => string = "getHTML"
