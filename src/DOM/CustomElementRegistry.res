/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/define)
*/
@send
external define: (
  Types.customElementRegistry,
  ~name: string,
  ~constructor: Types.htmlElement,
  ~options: Types.elementDefinitionOptions=?,
) => unit = "define"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/getName)
*/
@send
external getName: (Types.customElementRegistry, Types.customElementConstructor) => string =
  "getName"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/whenDefined)
*/
@send
external whenDefined: (
  Types.customElementRegistry,
  string,
) => promise<Types.customElementConstructor> = "whenDefined"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry/upgrade)
*/
@send
external upgrade: (Types.customElementRegistry, Types.node) => unit = "upgrade"
