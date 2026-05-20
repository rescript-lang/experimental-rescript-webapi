@editor.completeFrom(StylePropertyMap)
type t = private {
  ...StylePropertyMapReadOnly.t,
}

external asStylePropertyMapReadOnly: t => StylePropertyMapReadOnly.t = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/getAll)
*/
@send
external getAll: (t, string) => array<CSSStyleValue.t> = "getAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/has)
*/
@send
external has: (t, string) => bool = "has"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/set)
*/
@send
external set: (t, ~property: string, ~values: CSSStyleValue.t) => unit = "set"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/set)
*/
@send
external set2: (t, ~property: string, ~values: string) => unit = "set"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/append)
*/
@send
external append: (t, ~property: string, ~values: CSSStyleValue.t) => unit = "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/append)
*/
@send
external append2: (t, ~property: string, ~values: string) => unit = "append"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/delete)
*/
@send
external delete: (t, string) => unit = "delete"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMap/clear)
*/
@send
external clear: t => unit = "clear"
