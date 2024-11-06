@@warning("-44")
@@warning("-33")
open DOM

module CSSStyleValue = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleValue/parse_static)
    */
  @scope("CSSStyleValue")
  external parse: (string, string) => cssStyleValue = "parse"

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleValue/parseAll_static)
    */
  @scope("CSSStyleValue")
  external parseAll: (string, string) => array<cssStyleValue> = "parseAll"
}
