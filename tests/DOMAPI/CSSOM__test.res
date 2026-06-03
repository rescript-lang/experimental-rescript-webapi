let acceptsMediaList = (_value: MediaList.t) => ()
let acceptsDomTypesMediaList = (_value: DomTypes.mediaList) => ()

let _ = (value: MediaList.t) => {
  acceptsDomTypesMediaList(value)
}

let acceptsStyleSheetList = (_value: StyleSheetList.t) => ()
let acceptsDomTypesStyleSheetList = (_value: DomTypes.styleSheetList) => ()

let _ = (value: StyleSheetList.t) => {
  acceptsStyleSheetList(value)
  acceptsDomTypesStyleSheetList(value)
}

let acceptsStyleSheet = (_value: StyleSheet.t) => ()
let acceptsDomTypesStyleSheet = (_value: DomTypes.styleSheet) => ()

let _ = (value: StyleSheet.t) => {
  acceptsStyleSheet(value)
  acceptsDomTypesStyleSheet(value)
}

let acceptsCSSStyleSheet = (_value: CSSStyleSheet.t) => ()
let acceptsDomTypesCSSStyleSheet = (_value: DomTypes.cssStyleSheet) => ()

let _ = (value: CSSStyleSheet.t) => {
  acceptsCSSStyleSheet(value)
  acceptsDomTypesCSSStyleSheet(value)
}

let acceptsCSSRule = (_value: CSSRule.t) => ()
let acceptsDomTypesCSSRule = (_value: DomTypes.cssRule) => ()

let _ = (value: CSSRule.t) => {
  acceptsCSSRule(value)
  acceptsDomTypesCSSRule(value)
}

let acceptsCSSRuleList = (_value: CSSRuleList.t) => ()
let acceptsDomTypesCSSRuleList = (_value: DomTypes.cssRuleList) => ()

let _ = (value: CSSRuleList.t) => {
  acceptsCSSRuleList(value)
  acceptsDomTypesCSSRuleList(value)
}

let acceptsCSSStyleDeclaration = (_value: CSSStyleDeclaration.t) => ()
let acceptsDomTypesCSSStyleDeclaration = (_value: DomTypes.cssStyleDeclaration) => ()

let _ = (value: CSSStyleDeclaration.t) => {
  acceptsCSSStyleDeclaration(value)
  acceptsDomTypesCSSStyleDeclaration(value)
}

let acceptsMediaQueryList = (_value: MediaQueryList.t) => ()
let acceptsDomTypesMediaQueryList = (_value: DomTypes.mediaQueryList) => ()

let _ = (value: MediaQueryList.t) => {
  acceptsMediaQueryList(value)
  acceptsDomTypesMediaQueryList(value)
}

let acceptsCSSStyleSheetInit = (_value: CSSStyleSheet.init) => ()
let _ = (value: DomTypes.cssStyleSheetInit) => acceptsCSSStyleSheetInit(value)
