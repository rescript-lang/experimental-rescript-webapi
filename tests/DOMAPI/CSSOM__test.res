let acceptsMediaList = (_value: MediaList.t) => ()
let acceptsDOMTypesMediaList = (_value: MediaList.t) => ()

let _ = (value: MediaList.t) => {
  acceptsDOMTypesMediaList(value)
}

let acceptsStyleSheetList = (_value: StyleSheetList.t) => ()
let acceptsDOMTypesStyleSheetList = (_value: StyleSheetList.t) => ()

let _ = (value: StyleSheetList.t) => {
  acceptsStyleSheetList(value)
  acceptsDOMTypesStyleSheetList(value)
}

let acceptsCSSStyleSheet = (_value: CSSStyleSheet.t) => ()
let acceptsDOMTypesCSSStyleSheet = (_value: CSSStyleSheet.t) => ()

let _ = (value: CSSStyleSheet.t) => {
  acceptsCSSStyleSheet(value)
  acceptsDOMTypesCSSStyleSheet(value)
}

let acceptsCSSRule = (_value: CSSRule.t) => ()
let acceptsDOMTypesCSSRule = (_value: CSSRule.t) => ()

let _ = (value: CSSRule.t) => {
  acceptsCSSRule(value)
  acceptsDOMTypesCSSRule(value)
}

let acceptsCSSRuleList = (_value: CSSRuleList.t) => ()
let acceptsDOMTypesCSSRuleList = (_value: CSSRuleList.t) => ()

let _ = (value: CSSRuleList.t) => {
  acceptsCSSRuleList(value)
  acceptsDOMTypesCSSRuleList(value)
}

let acceptsCSSStyleDeclaration = (_value: CSSStyleDeclaration.t) => ()
let acceptsDOMTypesCSSStyleDeclaration = (_value: CSSStyleDeclaration.t) => ()

let _ = (value: CSSStyleDeclaration.t) => {
  acceptsCSSStyleDeclaration(value)
  acceptsDOMTypesCSSStyleDeclaration(value)
}

let acceptsMediaQueryList = (_value: MediaQueryList.t) => ()
let acceptsDOMTypesMediaQueryList = (_value: MediaQueryList.t) => ()

let _ = (value: MediaQueryList.t) => {
  acceptsMediaQueryList(value)
  acceptsDOMTypesMediaQueryList(value)
}

let acceptsCSSStyleSheetInit = (_value: CSSStyleSheet.init) => ()
let _ = (value: CSSStyleSheet.init) => acceptsCSSStyleSheetInit(value)
