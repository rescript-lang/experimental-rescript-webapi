@@warning("-44")
@@warning("-33")
open DOMAPI

module CSSStyleDeclaration = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/item)
    */
  @send
  external item: (cssStyleDeclaration, int) => string = "item"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/getPropertyValue)
    */
  @send
  external getPropertyValue: (cssStyleDeclaration, string) => string = "getPropertyValue"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/getPropertyPriority)
    */
  @send
  external getPropertyPriority: (cssStyleDeclaration, string) => string = "getPropertyPriority"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/setProperty)
    */
  @send
  external setProperty: (cssStyleDeclaration, string, string, string) => unit = "setProperty"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/removeProperty)
    */
  @send
  external removeProperty: (cssStyleDeclaration, string) => string = "removeProperty"
}
