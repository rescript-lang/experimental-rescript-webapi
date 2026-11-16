let domElement: WebAPI.DOMTree.element => WebAPI.Element.t = value => value
let elementDom: WebAPI.Element.t => WebAPI.DOMTree.element = value => value

let collection: WebAPI.DOMTree.htmlCollection<'item> => WebAPI.HTMLCollection.t<'item> = value =>
  value

let collectionBack: WebAPI.HTMLCollection.t<'item> => WebAPI.DOMTree.htmlCollection<
  'item,
> = value => value

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

let toPublic11: WebAPI.StyleSheet.cssRuleList => WebAPI.CSSRuleList.t = value => value
let toCore11: WebAPI.CSSRuleList.t => WebAPI.StyleSheet.cssRuleList = value => value

let treeMode = WebAPI.DOMTree.Manual
let preservedTreeMode: WebAPI.DOMTree.slotAssignmentMode = treeMode

let adoptedSheets = (root: WebAPI.DOMTree.shadowRoot): array<WebAPI.StyleSheet.cssStyleSheet> =>
  root.adoptedStyleSheets

let styleParent = (style: WebAPI.CSSStyleDeclaration.t): Null.t<WebAPI.StyleSheet.cssRule> =>
  style.parentRule

let dataset = (element: WebAPI.HTMLElement.t) => element.dataset
let mutateStyle = (style: WebAPI.CSSStyleDeclaration.t, color: string) => style.color = color

// The rich fields retain the original CSS operation-module types.
let htmlStyle = (element: WebAPI.DOMTree.htmlElement): WebAPI.CSSStyleDeclaration.t => element.style

let slotStyle = (element: WebAPI.DOMTree.htmlSlotElement): WebAPI.CSSStyleDeclaration.t =>
  element.style

let attributeStyle = (element: WebAPI.DOMTree.htmlElement): WebAPI.StylePropertyMap.t =>
  element.attributeStyleMap

let sheets = (root: WebAPI.DOMTree.shadowRoot): WebAPI.StyleSheetList.t => root.styleSheets
let media = (sheet: WebAPI.StyleSheet.t): WebAPI.MediaList.t => sheet.media
let rules = (sheet: WebAPI.StyleSheet.cssStyleSheet): WebAPI.CSSRuleList.t => sheet.cssRules
