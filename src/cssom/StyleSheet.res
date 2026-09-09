@@warning("-30")

/**
A single style sheet. CSS style sheets will further implement the more specialized CSSStyleSheet interface.
[See StyleSheet on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet)
*/
type rec t = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/href)
    */
  href: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/ownerNode)
    */
  ownerNode: Null.t<unknown>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/parentStyleSheet)
    */
  parentStyleSheet: Null.t<cssStyleSheet>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/title)
    */
  title: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/media)
    */
  media: MediaList.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/disabled)
    */
  mutable disabled: bool,
}

/**
A single CSS style sheet. It inherits properties and methods from its parent, StyleSheet.
[See CSSStyleSheet on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet)
TODO: mark as private once mutating fields of private records is allowed
*/
@editor.completeFrom(CSSStyleSheet) and cssStyleSheet = {
  // Base properties from StyleSheet
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/type)
    */
  @as("type")
  type_: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/href)
    */
  href: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/ownerNode)
    */
  ownerNode: Null.t<unknown>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/parentStyleSheet)
    */
  parentStyleSheet: Null.t<cssStyleSheet>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/title)
    */
  title: Null.t<string>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/media)
    */
  media: MediaList.t,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/StyleSheet/disabled)
    */
  mutable disabled: bool,
  // End base properties from StyleSheet

  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/ownerRule)
    */
  ownerRule: Null.t<cssRule>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet/cssRules)
    */
  cssRules: cssRuleList,
}

/**
A single CSS rule. There are several types of rules, listed in the Type constants section below.
[See CSSRule on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule)
*/
and cssRule = {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule/cssText)
    */
  mutable cssText: string,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule/parentRule)
    */
  parentRule: Null.t<cssRule>,
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRule/parentStyleSheet)
    */
  parentStyleSheet: Null.t<cssStyleSheet>,
}

/**
A CSSRuleList is an (indirect-modify only) array-like object containing an ordered collection of CSSRule objects.
[See CSSRuleList on MDN](https://developer.mozilla.org/docs/Web/API/CSSRuleList)
*/
@editor.completeFrom(CSSRuleList) and cssRuleList = private {
  /**
    [Read more on MDN](https://developer.mozilla.org/docs/Web/API/CSSRuleList/length)
    */
  length: int,
}

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
