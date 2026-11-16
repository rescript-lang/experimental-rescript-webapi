let domElement: WebAPI.DOMTree.element => WebAPI.Element.t = value => value
let elementDom: WebAPI.Element.t => WebAPI.DOMTree.element = value => value
let node: WebAPI.DOMTree.node => WebAPI.DOMTree.node = value => value
let nodeBack: WebAPI.DOMTree.node => WebAPI.DOMTree.node = value => value
let html: WebAPI.DOMTree.htmlElement => WebAPI.DOMTree.htmlElement = value => value
let htmlBack: WebAPI.DOMTree.htmlElement => WebAPI.DOMTree.htmlElement = value => value

let collection: WebAPI.DOMTree.htmlCollection<'item> => WebAPI.HTMLCollection.t<'item> = value =>
  value

let collectionBack: WebAPI.HTMLCollection.t<'item> => WebAPI.DOMTree.htmlCollection<
  'item,
> = value => value

let declaration: WebAPI.CSSOMTypes.cssStyleDeclaration => WebAPI.CSSStyleDeclaration.t = value =>
  value

let declarationBack: WebAPI.CSSStyleDeclaration.t => WebAPI.CSSOMTypes.cssStyleDeclaration = value =>
  value

let styleMap: WebAPI.CSSOMTypes.stylePropertyMap => WebAPI.StylePropertyMap.t = value => value
let styleMapBack: WebAPI.StylePropertyMap.t => WebAPI.CSSOMTypes.stylePropertyMap = value => value
let mode: WebAPI.DOMTree.slotAssignmentMode = WebAPI.DOMTree.Manual

let toPublic0: WebAPI.DOMTree.node => WebAPI.Node.t = value => value
let toCore0: WebAPI.Node.t => WebAPI.DOMTree.node = value => value

let toPublic1: WebAPI.DOMTree.documentFragment => WebAPI.DocumentFragment.t = value => value
let toCore1: WebAPI.DocumentFragment.t => WebAPI.DOMTree.documentFragment = value => value

let toPublic2: WebAPI.DOMTree.shadowRoot => WebAPI.ShadowRoot.t = value => value
let toCore2: WebAPI.ShadowRoot.t => WebAPI.DOMTree.shadowRoot = value => value

let toPublic3: WebAPI.DOMTree.htmlElement => WebAPI.HTMLElement.t = value => value
let toCore3: WebAPI.HTMLElement.t => WebAPI.DOMTree.htmlElement = value => value

let toPublic4: WebAPI.DOMTree.htmlFormElement => WebAPI.HTMLFormElement.t = value => value
let toCore4: WebAPI.HTMLFormElement.t => WebAPI.DOMTree.htmlFormElement = value => value

let toPublic5: WebAPI.DOMTree.htmlFormControlsCollection => WebAPI.HTMLFormControlsCollection.t = value =>
  value

let toCore5: WebAPI.HTMLFormControlsCollection.t => WebAPI.DOMTree.htmlFormControlsCollection = value =>
  value

let toPublic6: WebAPI.DOMTree.htmlSlotElement => WebAPI.HTMLSlotElement.t = value => value
let toCore6: WebAPI.HTMLSlotElement.t => WebAPI.DOMTree.htmlSlotElement = value => value

let toPublic7: WebAPI.DOMTree.elementInternals => WebAPI.ElementInternals.t = value => value
let toCore7: WebAPI.ElementInternals.t => WebAPI.DOMTree.elementInternals = value => value

let toPublic8: WebAPI.CSSOMTypes.styleSheet => WebAPI.StyleSheet.t = value => value
let toCore8: WebAPI.StyleSheet.t => WebAPI.CSSOMTypes.styleSheet = value => value

let toPublic9: WebAPI.CSSOMTypes.cssStyleSheet => WebAPI.StyleSheet.cssStyleSheet = value => value
let toCore9: WebAPI.StyleSheet.cssStyleSheet => WebAPI.CSSOMTypes.cssStyleSheet = value => value

let toPublic10: WebAPI.CSSOMTypes.cssRule => WebAPI.StyleSheet.cssRule = value => value
let toCore10: WebAPI.StyleSheet.cssRule => WebAPI.CSSOMTypes.cssRule = value => value

let toPublic11: WebAPI.CSSOMTypes.cssRuleList => WebAPI.CSSRuleList.t = value => value
let toCore11: WebAPI.CSSRuleList.t => WebAPI.CSSOMTypes.cssRuleList = value => value

let toPublic12: WebAPI.CSSOMTypes.stylePropertyMapReadOnly => WebAPI.StylePropertyMapReadOnly.t = value =>
  value

let toCore12: WebAPI.StylePropertyMapReadOnly.t => WebAPI.CSSOMTypes.stylePropertyMapReadOnly = value =>
  value

let toPublic13: WebAPI.CSSOMTypes.styleSheetList => WebAPI.StyleSheetList.t = value => value
let toCore13: WebAPI.StyleSheetList.t => WebAPI.CSSOMTypes.styleSheetList = value => value

let toPublic14: WebAPI.CSSOMTypes.mediaList => WebAPI.MediaList.t = value => value
let toCore14: WebAPI.MediaList.t => WebAPI.CSSOMTypes.mediaList = value => value

let treeMode = WebAPI.DOMTree.Manual
let preservedTreeMode: WebAPI.DOMTree.slotAssignmentMode = treeMode

let adoptedSheets = (root: WebAPI.DOMTree.shadowRoot): array<WebAPI.StyleSheet.cssStyleSheet> =>
  root.adoptedStyleSheets

let styleParent = (style: WebAPI.CSSStyleDeclaration.t): Null.t<WebAPI.CSSOMTypes.cssRule> =>
  style.parentRule

let dataset = (element: WebAPI.HTMLElement.t) => element.dataset
let mutateStyle = (style: WebAPI.CSSStyleDeclaration.t, color: string) => style.color = color
