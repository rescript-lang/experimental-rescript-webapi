type t = CssomTypes.cssStyleSheet = {...CssomTypes.cssStyleSheet}
type init = CssomTypes.cssStyleSheetInit = {...CssomTypes.cssStyleSheetInit}

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet)
*/
@new
external make: (~options: init=?) => t = "CSSStyleSheet"

external asStyleSheet: t => StyleSheet.t = "%identity"
/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/insertRule)
*/
@send
external insertRule: (t, ~rule: string, ~index: int=?) => int = "insertRule"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/deleteRule)
*/
@send
external deleteRule: (t, int) => unit = "deleteRule"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replace)
*/
@send
external replace: (t, string) => promise<t> = "replace"

/**
[Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/replaceSync)
*/
@send
external replaceSync: (t, string) => unit = "replaceSync"
