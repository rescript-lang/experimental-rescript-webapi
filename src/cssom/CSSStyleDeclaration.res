@editor.completeFrom(CSSStyleDeclaration)
type t = CSSOMTypes.cssStyleDeclaration = {...CSSOMTypes.cssStyleDeclaration}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/item)
*/
@send
external item: (t, int) => string = "item"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/getPropertyValue)
*/
@send
external getPropertyValue: (t, string) => string = "getPropertyValue"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/getPropertyPriority)
*/
@send
external getPropertyPriority: (t, string) => string = "getPropertyPriority"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/setProperty)
*/
@throws(JsExn) @send
external setProperty: (t, ~property: string, ~value: string, ~priority: string=?) => unit =
  "setProperty"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration/removeProperty)
*/
@throws(JsExn) @send
external removeProperty: (t, string) => string = "removeProperty"
