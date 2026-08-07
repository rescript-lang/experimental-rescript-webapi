/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/item)
*/
@send
external item: (DOM.cssStyleDeclaration, int) => string = "item"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/getPropertyValue)
*/
@send
external getPropertyValue: (DOM.cssStyleDeclaration, string) => string = "getPropertyValue"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/getPropertyPriority)
*/
@send
external getPropertyPriority: (DOM.cssStyleDeclaration, string) => string = "getPropertyPriority"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/setProperty)
*/
@send
external setProperty: (
  DOM.cssStyleDeclaration,
  ~property: string,
  ~value: string,
  ~priority: string=?,
) => unit = "setProperty"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/removeProperty)
*/
@send
external removeProperty: (DOM.cssStyleDeclaration, string) => string = "removeProperty"
