/**
[See CSSStyleValue on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleValue)
*/
@editor.completeFrom(CSSStyleValue)
type t = private {}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleValue/parse_static)
*/
@scope("CSSStyleValue")
external parse: (~property: string, ~cssText: string) => t = "parse"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleValue/parseAll_static)
*/
@scope("CSSStyleValue")
external parseAll: (~property: string, ~cssText: string) => array<t> = "parseAll"
