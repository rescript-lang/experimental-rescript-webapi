/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/item)
*/
@send
external item: (Types.cssStyleDeclaration, int) => string = "item"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/getPropertyValue)
*/
@send
external getPropertyValue: (Types.cssStyleDeclaration, string) => string = "getPropertyValue"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/getPropertyPriority)
*/
@send
external getPropertyPriority: (Types.cssStyleDeclaration, string) => string = "getPropertyPriority"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/setProperty)
*/
@send
external setProperty: (
  Types.cssStyleDeclaration,
  ~property: string,
  ~value: string,
  ~priority: string=?,
) => unit = "setProperty"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/removeProperty)
*/
@send
external removeProperty: (Types.cssStyleDeclaration, string) => string = "removeProperty"
