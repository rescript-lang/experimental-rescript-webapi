/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/define)
*/
@scope("globalThis.customElements")
external define: (
  ~name: string,
  ~constructor: DomTypes.htmlElement,
  ~options: DomTypes.elementDefinitionOptions=?,
) => unit = "define"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/getName)
*/
@scope("globalThis.customElements")
external getName: DomTypes.customElementConstructor => string = "getName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/whenDefined)
*/
@scope("globalThis.customElements")
external whenDefined: string => promise<DomTypes.customElementConstructor> = "whenDefined"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/upgrade)
*/
@scope("globalThis.customElements")
external upgrade: DomTypes.node => unit = "upgrade"
