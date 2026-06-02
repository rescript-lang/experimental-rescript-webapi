let acceptsDOMMediaList = (_value: DOM.mediaList) => ()
let acceptsMediaList = (_value: MediaList.t) => ()
let acceptsDomTypesMediaList = (_value: DomTypes.mediaList) => ()

let _ = (value: DOM.mediaList) => {
  acceptsMediaList(value)
  acceptsDomTypesMediaList(value)
}

let _ = (value: MediaList.t) => {
  acceptsDOMMediaList(value)
  acceptsDomTypesMediaList(value)
}

let acceptsDOMStyleSheetList = (_value: DOM.styleSheetList) => ()
let acceptsStyleSheetList = (_value: StyleSheetList.t) => ()

let _ = (value: DOM.styleSheetList) => acceptsStyleSheetList(value)
let _ = (value: StyleSheetList.t) => acceptsDOMStyleSheetList(value)

let acceptsDOMStyleSheet = (_value: DOM.styleSheet) => ()
let acceptsStyleSheet = (_value: StyleSheet.t) => ()

let _ = (value: DOM.styleSheet) => acceptsStyleSheet(value)
let _ = (value: StyleSheet.t) => acceptsDOMStyleSheet(value)

let acceptsDOMCSSStyleSheet = (_value: DOM.cssStyleSheet) => ()
let acceptsCSSStyleSheet = (_value: CSSStyleSheet.t) => ()

let _ = (value: DOM.cssStyleSheet) => acceptsCSSStyleSheet(value)
let _ = (value: CSSStyleSheet.t) => acceptsDOMCSSStyleSheet(value)

let acceptsDOMCSSRule = (_value: DOM.cssRule) => ()
let acceptsCSSRule = (_value: CSSRule.t) => ()

let _ = (value: DOM.cssRule) => acceptsCSSRule(value)
let _ = (value: CSSRule.t) => acceptsDOMCSSRule(value)

let acceptsDOMCSSRuleList = (_value: DOM.cssRuleList) => ()
let acceptsCSSRuleList = (_value: CSSRuleList.t) => ()

let _ = (value: DOM.cssRuleList) => acceptsCSSRuleList(value)
let _ = (value: CSSRuleList.t) => acceptsDOMCSSRuleList(value)

let acceptsDOMCSSStyleDeclaration = (_value: DOM.cssStyleDeclaration) => ()
let acceptsCSSStyleDeclaration = (_value: CSSStyleDeclaration.t) => ()

let _ = (value: DOM.cssStyleDeclaration) => acceptsCSSStyleDeclaration(value)
let _ = (value: CSSStyleDeclaration.t) => acceptsDOMCSSStyleDeclaration(value)

let acceptsDOMMediaQueryList = (_value: DOM.mediaQueryList) => ()
let acceptsMediaQueryList = (_value: MediaQueryList.t) => ()

let _ = (value: DOM.mediaQueryList) => acceptsMediaQueryList(value)
let _ = (value: MediaQueryList.t) => acceptsDOMMediaQueryList(value)

let acceptsCSSStyleSheetInit = (_value: CSSStyleSheet.init) => ()
let _ = (value: DomTypes.cssStyleSheetInit) => acceptsCSSStyleSheetInit(value)
