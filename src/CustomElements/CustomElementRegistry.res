/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/define)
*/
@scope("globalThis.customElements")
external define: (
  ~name: string,
  ~constructor: HTMLElement.t,
  ~options: DOM.elementDefinitionOptions=?,
) => unit = "define"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/getName)
*/
@scope("globalThis.customElements")
external getName: DOM.customElementConstructor => string = "getName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/whenDefined)
*/
@scope("globalThis.customElements")
external whenDefined: string => promise<DOM.customElementConstructor> = "whenDefined"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/upgrade)
*/
@scope("globalThis.customElements")
external upgrade: Node.t => unit = "upgrade"
