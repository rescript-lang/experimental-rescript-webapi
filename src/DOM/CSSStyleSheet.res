/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet)
*/
@new
external make: (~options: Types.cssStyleSheetInit=?) => Types.cssStyleSheet = "CSSStyleSheet"

external asStyleSheet: Types.cssStyleSheet => Types.styleSheet = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/insertRule)
*/
@send
external insertRule: (Types.cssStyleSheet, ~rule: string, ~index: int=?) => int = "insertRule"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/deleteRule)
*/
@send
external deleteRule: (Types.cssStyleSheet, int) => unit = "deleteRule"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replace)
*/
@send
external replace: (Types.cssStyleSheet, string) => promise<Types.cssStyleSheet> = "replace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replaceSync)
*/
@send
external replaceSync: (Types.cssStyleSheet, string) => unit = "replaceSync"
