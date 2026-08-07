external asStylePropertyMapReadOnly: DOM.stylePropertyMap => DOM.stylePropertyMapReadOnly =
  "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/getAll)
*/
@send
external getAll: (DOM.stylePropertyMap, string) => array<DOM.cssStyleValue> = "getAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/has)
*/
@send
external has: (DOM.stylePropertyMap, string) => bool = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/set)
*/
@send
external set: (DOM.stylePropertyMap, ~property: string, ~values: DOM.cssStyleValue) => unit = "set"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/set)
*/
@send
external set2: (DOM.stylePropertyMap, ~property: string, ~values: string) => unit = "set"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/append)
*/
@send
external append: (DOM.stylePropertyMap, ~property: string, ~values: DOM.cssStyleValue) => unit =
  "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/append)
*/
@send
external append2: (DOM.stylePropertyMap, ~property: string, ~values: string) => unit = "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/delete)
*/
@send
external delete: (DOM.stylePropertyMap, string) => unit = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/clear)
*/
@send
external clear: DOM.stylePropertyMap => unit = "clear"
