/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet)
*/
@new
external make: (~options: DOM.cssStyleSheetInit=?) => DOM.cssStyleSheet = "CSSStyleSheet"

external asStyleSheet: DOM.cssStyleSheet => DOM.styleSheet = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/insertRule)
*/
@send
external insertRule: (DOM.cssStyleSheet, ~rule: string, ~index: int=?) => int = "insertRule"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/deleteRule)
*/
@send
external deleteRule: (DOM.cssStyleSheet, int) => unit = "deleteRule"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replace)
*/
@send
external replace: (DOM.cssStyleSheet, string) => promise<DOM.cssStyleSheet> = "replace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replaceSync)
*/
@send
external replaceSync: (DOM.cssStyleSheet, string) => unit = "replaceSync"
