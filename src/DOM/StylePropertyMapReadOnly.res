/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/getAll)
*/
@send
external getAll: (Types.stylePropertyMapReadOnly, string) => array<Types.cssStyleValue> = "getAll"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly/has)
*/
@send
external has: (Types.stylePropertyMapReadOnly, string) => bool = "has"
