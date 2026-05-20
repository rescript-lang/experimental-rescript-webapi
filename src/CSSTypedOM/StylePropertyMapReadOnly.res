@editor.completeFrom(StylePropertyMapReadOnly)
type t = private {
  size: int,
}

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
