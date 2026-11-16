@@warning("-30")

@editor.completeFrom(StyleSheet)
type t = DOM.styleSheet = {...DOM.styleSheet}

@editor.completeFrom(CSSStyleSheet)
type cssStyleSheet = DOM.cssStyleSheet = {...DOM.cssStyleSheet}

type cssRule = DOM.cssRule = {...DOM.cssRule}

@editor.completeFrom(CSSRuleList)
type cssRuleList = DOM.cssRuleList = private {...DOM.cssRuleList}

type init = {
  mutable baseURL?: string,
  mutable media?: unknown,
  mutable disabled?: bool,
}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet)
*/
@new
external make: (~options: init=?) => cssStyleSheet = "CSSStyleSheet"

external asStyleSheet: cssStyleSheet => t = "%identity"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/insertRule)
*/
@throws(JsExn) @send
external insertRule: (cssStyleSheet, ~rule: string, ~index: int=?) => int = "insertRule"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/deleteRule)
*/
@send
external deleteRule: (cssStyleSheet, int) => unit = "deleteRule"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replace)
*/
@send
external replace: (cssStyleSheet, string) => promise<cssStyleSheet> = "replace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replaceSync)
*/
@throws(JsExn) @send
external replaceSync: (cssStyleSheet, string) => unit = "replaceSync"
