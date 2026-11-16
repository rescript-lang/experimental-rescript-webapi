let domElement: WebAPI.DOM.element => WebAPI.Element.t = value => value
let elementDom: WebAPI.Element.t => WebAPI.DOM.element = value => value
let node: WebAPI.DOMTree.node => WebAPI.DOM.node = value => value
let nodeBack: WebAPI.DOM.node => WebAPI.DOMTree.node = value => value
let html: WebAPI.DOM.htmlElement => WebAPI.DOMTree.htmlElement = value => value
let htmlBack: WebAPI.DOMTree.htmlElement => WebAPI.DOM.htmlElement = value => value
let collection: WebAPI.DOM.htmlCollection<'item> => WebAPI.HTMLCollection.t<'item> = value => value

let collectionBack: WebAPI.HTMLCollection.t<'item> => WebAPI.DOM.htmlCollection<'item> = value =>
  value

let declaration: WebAPI.DOM.cssStyleDeclaration => WebAPI.CSSStyleDeclaration.t = value => value
let declarationBack: WebAPI.CSSStyleDeclaration.t => WebAPI.DOM.cssStyleDeclaration = value => value
let styleMap: WebAPI.DOM.stylePropertyMap => WebAPI.StylePropertyMap.t = value => value
let styleMapBack: WebAPI.StylePropertyMap.t => WebAPI.DOM.stylePropertyMap = value => value
let mode: WebAPI.DOMTree.slotAssignmentMode = WebAPI.DOMTree.Manual

let toPublic0: WebAPI.DOM.node => WebAPI.Node.t = value => value
let toCore0: WebAPI.Node.t => WebAPI.DOM.node = value => value

let toPublic1: WebAPI.DOM.documentFragment => WebAPI.DocumentFragment.t = value => value
let toCore1: WebAPI.DocumentFragment.t => WebAPI.DOM.documentFragment = value => value

let toPublic2: WebAPI.DOM.shadowRoot => WebAPI.ShadowRoot.t = value => value
let toCore2: WebAPI.ShadowRoot.t => WebAPI.DOM.shadowRoot = value => value

let toPublic3: WebAPI.DOM.htmlElement => WebAPI.HTMLElement.t = value => value
let toCore3: WebAPI.HTMLElement.t => WebAPI.DOM.htmlElement = value => value

let toPublic4: WebAPI.DOM.htmlFormElement => WebAPI.HTMLFormElement.t = value => value
let toCore4: WebAPI.HTMLFormElement.t => WebAPI.DOM.htmlFormElement = value => value

let toPublic5: WebAPI.DOM.htmlFormControlsCollection => WebAPI.HTMLFormControlsCollection.t = value =>
  value

let toCore5: WebAPI.HTMLFormControlsCollection.t => WebAPI.DOM.htmlFormControlsCollection = value =>
  value

let toPublic6: WebAPI.DOM.htmlSlotElement => WebAPI.HTMLSlotElement.t = value => value
let toCore6: WebAPI.HTMLSlotElement.t => WebAPI.DOM.htmlSlotElement = value => value

let toPublic7: WebAPI.DOM.elementInternals => WebAPI.ElementInternals.t = value => value
let toCore7: WebAPI.ElementInternals.t => WebAPI.DOM.elementInternals = value => value

let toPublic8: WebAPI.DOM.styleSheet => WebAPI.StyleSheet.t = value => value
let toCore8: WebAPI.StyleSheet.t => WebAPI.DOM.styleSheet = value => value

let toPublic9: WebAPI.DOM.cssStyleSheet => WebAPI.StyleSheet.cssStyleSheet = value => value
let toCore9: WebAPI.StyleSheet.cssStyleSheet => WebAPI.DOM.cssStyleSheet = value => value

let toPublic10: WebAPI.DOM.cssRule => WebAPI.StyleSheet.cssRule = value => value
let toCore10: WebAPI.StyleSheet.cssRule => WebAPI.DOM.cssRule = value => value

let toPublic11: WebAPI.DOM.cssRuleList => WebAPI.CSSRuleList.t = value => value
let toCore11: WebAPI.CSSRuleList.t => WebAPI.DOM.cssRuleList = value => value

let toPublic12: WebAPI.DOM.stylePropertyMapReadOnly => WebAPI.StylePropertyMapReadOnly.t = value =>
  value

let toCore12: WebAPI.StylePropertyMapReadOnly.t => WebAPI.DOM.stylePropertyMapReadOnly = value =>
  value

let toPublic13: WebAPI.DOM.styleSheetList => WebAPI.StyleSheetList.t = value => value
let toCore13: WebAPI.StyleSheetList.t => WebAPI.DOM.styleSheetList = value => value

let toPublic14: WebAPI.DOM.mediaList => WebAPI.MediaList.t = value => value
let toCore14: WebAPI.MediaList.t => WebAPI.DOM.mediaList = value => value

let treeMode = WebAPI.DOMTree.Manual
let preservedTreeMode: WebAPI.DOMTree.slotAssignmentMode = treeMode

let adoptedSheets = (root: WebAPI.DOM.shadowRoot): array<WebAPI.StyleSheet.cssStyleSheet> =>
  root.adoptedStyleSheets

let styleParent = (style: WebAPI.CSSStyleDeclaration.t): Null.t<WebAPI.DOM.cssRule> =>
  style.parentRule

let dataset = (element: WebAPI.HTMLElement.t): WebAPI.DOM.domStringMap => element.dataset
let mutateStyle = (style: WebAPI.CSSStyleDeclaration.t, color: string) => style.color = color
