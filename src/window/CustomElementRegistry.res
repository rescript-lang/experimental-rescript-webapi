/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/define)
*/
@throws(JsExn) @send
external define: (
  DOM.customElementRegistry,
  ~name: string,
  ~constructor: DOMTree.htmlElement,
  ~options: DOM.elementDefinitionOptions=?,
) => unit = "define"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/getName)
*/
@send
external getName: (DOM.customElementRegistry, DOM.customElementConstructor) => Null.t<string> =
  "getName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/whenDefined)
*/
@send
external whenDefined: (DOM.customElementRegistry, string) => promise<DOM.customElementConstructor> =
  "whenDefined"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/upgrade)
*/
@send
external upgrade: (DOM.customElementRegistry, DOMTree.node) => unit = "upgrade"
