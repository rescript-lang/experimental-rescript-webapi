@@warning("-44")
@@warning("-33")
open DOMAPI

module CustomElementRegistry = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/define)
    */
  @send
  external define: (
    customElementRegistry,
    string,
    customElementConstructor,
    elementDefinitionOptions,
  ) => unit = "define"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/getName)
    */
  @send
  external getName: (customElementRegistry, customElementConstructor) => string = "getName"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/whenDefined)
    */
  @send
  external whenDefined: (customElementRegistry, string) => Promise.t<customElementConstructor> =
    "whenDefined"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/upgrade)
    */
  @send
  external upgrade: (customElementRegistry, node) => unit = "upgrade"
}
